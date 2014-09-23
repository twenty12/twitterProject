(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[     29969,        807]
NotebookOptionsPosition[     30438,        798]
NotebookOutlinePosition[     30898,        819]
CellTagsIndexPosition[     30855,        816]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}], " ", 
  RowBox[{"(*", 
   RowBox[{"ensures", " ", "fresh", " ", "start"}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Decode", "[", "x_", "]"}], ":=", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringQ", "[", "x", "]"}], ",", 
      RowBox[{"StringReplace", "[", 
       RowBox[{"x", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"{", "\"\<#\>\"", "}"}], "\[Rule]", "\"\<%23\>\""}], ",", 
          RowBox[{
           RowBox[{"{", "\"\<@\>\"", "}"}], "\[Rule]", "\"\<%40\>\""}]}], 
         "}"}]}], "]"}], ",", "x"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Grab", "[", "x_", "]"}], ":=", "\[IndentingNewLine]", 
    RowBox[{"ToString", "[", 
     RowBox[{"Import", "[", 
      RowBox[{
       RowBox[{"StringReplace", "[", 
        RowBox[{
         RowBox[{"ToString", "[", 
          RowBox[{"StringReplace", "[", 
           RowBox[{
           "\"\<http://otter.topsy.com/search.js?q=\[Alpha]&language=en&\
perpage=5000&window=realtime&sort=date&apikey=\
09C43A9B270A470B8EB8F2946A9369F3\>\"", ",", 
            RowBox[{"{", 
             RowBox[{"\"\<\[Alpha]\>\"", "\[Rule]", "x"}], "}"}]}], "]"}], 
          "]"}], ",", " ", 
         RowBox[{"\"\<~\>\"", "\[Rule]", "\"\<\>\""}]}], "]"}], ",", 
       "\"\<Data\>\""}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Tidy", "[", "x_", "]"}], ":=", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{"StringQ", "[", "x", "]"}], ",", 
      RowBox[{"StringReplace", "[", 
       RowBox[{"x", ",", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "\"\<.\>\"", ",", "\"\<:\>\"", ",", "\"\<,\>\"", ",", "\"\<->\>\"", 
           ",", "\"\<{\>\"", ",", "\"\<}\>\"", ",", "\"\</\>\"", ",", 
           "\"\<(\>\"", ",", "\"\<)\>\""}], "}"}], "\[Rule]", "\"\<\>\""}]}], 
       "]"}], ",", "x"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Hunt", "[", "AT", "]"}], "[", "x_", "]"}], ":=", 
    RowBox[{"Sort", "[", 
     RowBox[{
      RowBox[{"Tally", "[", 
       RowBox[{"Flatten", "[", 
        RowBox[{"Map", "[", 
         RowBox[{"ToLowerCase", ",", 
          RowBox[{"StringCases", "[", 
           RowBox[{
            RowBox[{"StringSplit", "[", 
             RowBox[{"x", ",", 
              RowBox[{"WhitespaceCharacter", ".."}]}], "]"}], ",", 
            RowBox[{"\"\<@\>\"", "~~", "___"}]}], "]"}]}], "]"}], "]"}], 
       "]"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"#1", "[", 
         RowBox[{"[", "2", "]"}], "]"}], ">", 
        RowBox[{"#2", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "&"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Hunt", "[", "HT", "]"}], "[", "x_", "]"}], ":=", 
    RowBox[{"Sort", "[", 
     RowBox[{
      RowBox[{"Tally", "[", 
       RowBox[{"Flatten", "[", 
        RowBox[{"Map", "[", 
         RowBox[{"ToLowerCase", ",", 
          RowBox[{"StringCases", "[", 
           RowBox[{
            RowBox[{"StringSplit", "[", 
             RowBox[{"x", ",", 
              RowBox[{"WhitespaceCharacter", ".."}]}], "]"}], ",", 
            RowBox[{"\"\<#\>\"", "~~", "___"}]}], "]"}]}], "]"}], "]"}], 
       "]"}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"#1", "[", 
         RowBox[{"[", "2", "]"}], "]"}], ">", 
        RowBox[{"#2", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "&"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Eat", "[", 
     RowBox[{"x_", ",", "y_"}], "]"}], ":=", 
    RowBox[{"Cases", "[", 
     RowBox[{
      RowBox[{"Flatten", "[", 
       RowBox[{"Take", "[", 
        RowBox[{"x", ",", "y"}], "]"}], "]"}], ",", 
      RowBox[{"Except", "[", "_Integer", "]"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]", " "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Branch", "[", "AT", "]"}], "[", "1", "]"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"Branch", "[", "HT", "]"}], "[", "1", "]"}], "=", 
     RowBox[{"List", "[", "Null", "]"}]}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Crawl", "[", "word_", "]"}], ":=", 
    RowBox[{"Table", "[", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{"Print", "[", "\"\<searches =\>\"", "]"}], ";", 
       RowBox[{"Print", "[", "searches", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Print", "[", "\"\<limbs = \>\"", "]"}], ";", 
       RowBox[{"Print", "[", "limbs", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Print", "[", "\"\<depth = \>\"", "]"}], ";", 
       RowBox[{"Print", "[", "depth", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Print", "[", "\"\<n = \>\"", "]"}], ";", 
       RowBox[{"Print", "[", "n", "]"}], ";"}], "*)"}], "\[IndentingNewLine]",
      "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"ATSeed", "[", "AT", "]"}], "[", "1", "]"}], "=", 
        RowBox[{
         RowBox[{
          RowBox[{"Seed", "[", "HT", "]"}], "[", "1", "]"}], "=", 
         RowBox[{"List", "[", "word", "]"}]}]}], ";", " ", 
       RowBox[{"(*", 
        RowBox[{"put", " ", "initial", " ", "hashtag", " ", "here"}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"reps", "=", 
        RowBox[{"n", "+", "0"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"PREFIX", "=", "HT"}], ";", "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"LIST", "[", "PREFIX", "]"}], "=", 
        RowBox[{
         RowBox[{"Hunt", "[", "PREFIX", "]"}], "[", 
         RowBox[{"Tidy", "[", 
          RowBox[{"Grab", "[", "\[IndentingNewLine]", 
           RowBox[{"Decode", "[", 
            RowBox[{
             RowBox[{"Take", "[", 
              RowBox[{
               RowBox[{"Take", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Seed", "[", "PREFIX", "]"}], "[", "n", "]"}], ",", 
                 
                 RowBox[{"{", 
                  RowBox[{"n", ",", "n"}], "}"}]}], "]"}], ",", 
               RowBox[{"{", "1", "}"}]}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], "]"}], "]"}]}], 
       ";", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{
         "big", " ", "new", " ", "list", " ", "from", " ", "seed", " ", "1"}],
          ",", "2", ",", "3", ",", "4"}], "*)"}], "\[IndentingNewLine]", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Length", "[", 
           RowBox[{"LIST", "[", "PREFIX", "]"}], "]"}], ">", 
          RowBox[{"limbs", "+", "3"}]}], ",", 
         RowBox[{"(*", 
          RowBox[{
          "if", " ", "query", " ", "does", " ", "not", " ", "yeild", " ", 
           "enough", " ", "results"}], "*)"}], "\[IndentingNewLine]", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"FirstTerm", "[", "PREFIX", "]"}], "=", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Take", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"Seed", "[", "PREFIX", "]"}], "[", "n", "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"n", ",", "n"}], "}"}]}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], ",", 
             RowBox[{"{", "limbs", "}"}]}], "]"}]}], ";", 
          RowBox[{"(*", 
           RowBox[{
           "first", " ", "term", " ", "of", " ", "big", " ", "new", " ", 
            "list"}], "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"NextTerms", "[", "PREFIX", "]"}], "=", 
           RowBox[{"Eat", "[", 
            RowBox[{
             RowBox[{"LIST", "[", "PREFIX", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"2", ",", 
               RowBox[{"limbs", "+", "1"}]}], "}"}]}], "]"}]}], ";", 
          RowBox[{"(*", 
           RowBox[{
           "next", " ", "4", " ", "terms", " ", "on", " ", "big", " ", "new", 
            " ", "list"}], "*)"}], "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Threaded", "[", "PREFIX", "]"}], "[", "n", "]"}], "=", 
           RowBox[{"Thread", "[", 
            RowBox[{
             RowBox[{"FirstTerm", "[", "PREFIX", "]"}], "\[Rule]", 
             RowBox[{"NextTerms", "[", "PREFIX", "]"}]}], "]"}]}], ";", 
          RowBox[{"(*", 
           RowBox[{
           "thread", " ", "the", " ", "terms", " ", "on", " ", "this", " ", 
            "new", " ", "list"}], "*)"}], "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Branch", "[", "PREFIX", "]"}], "[", 
            RowBox[{"n", "+", "1"}], "]"}], "=", 
           RowBox[{"Join", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Branch", "[", "PREFIX", "]"}], "[", "n", "]"}], ",", 
             RowBox[{
              RowBox[{"Threaded", "[", "PREFIX", "]"}], "[", "n", "]"}]}], 
            "]"}]}], ";", 
          RowBox[{"(*", 
           RowBox[{
           "join", " ", "all", " ", "the", " ", "threaded", " ", "terms", " ",
             "for", " ", "graphing", " ", "purpose"}], "*)"}], 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"Seed", "[", "PREFIX", "]"}], "[", 
            RowBox[{"n", "+", "1"}], "]"}], "=", 
           RowBox[{"Join", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Seed", "[", "PREFIX", "]"}], "[", "n", "]"}], ",", 
             RowBox[{"NextTerms", "[", "PREFIX", "]"}]}], "]"}]}], ";"}], 
         RowBox[{"(*", 
          RowBox[{
          "add", " ", "new", " ", "terms", " ", "to", " ", "list", " ", "of", 
           " ", "seeds"}], "*)"}], "\[IndentingNewLine]", 
         "\[IndentingNewLine]", ",", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Seed", "[", "PREFIX", "]"}], "[", 
            RowBox[{"n", "+", "1"}], "]"}], "=", 
           RowBox[{
            RowBox[{"Seed", "[", "PREFIX", "]"}], "[", "n", "]"}]}], ";", 
          RowBox[{
           RowBox[{
            RowBox[{"Branch", "[", "PREFIX", "]"}], "[", 
            RowBox[{"n", "+", "1"}], "]"}], "=", 
           RowBox[{
            RowBox[{"Branch", "[", "PREFIX", "]"}], "[", "n", "]"}]}], 
          ";"}]}], "]"}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]",
       ",", 
      RowBox[{"{", 
       RowBox[{"n", ",", "searches"}], "}"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SelectDepth", "=", 
   RowBox[{"PopupMenu", "[", 
    RowBox[{
     RowBox[{"Dynamic", "[", "depth", "]"}], ",", 
     RowBox[{"Range", "[", "10", "]"}], ",", " ", 
     RowBox[{"FieldSize", "\[Rule]", "fs"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SelectLimbs", "=", 
   RowBox[{"PopupMenu", "[", 
    RowBox[{
     RowBox[{"Dynamic", "[", "limbs", "]"}], ",", 
     RowBox[{"Range", "[", "10", "]"}], ",", " ", 
     RowBox[{"FieldSize", "\[Rule]", "fs"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"QueryTerm", " ", "=", " ", 
    RowBox[{"InputField", "[", 
     RowBox[{
      RowBox[{"Dynamic", "[", "SearchTerm", "]"}], ",", "String"}], "]"}]}], 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Refresher", "[", "NewTags_", "]"}], ":=", 
   RowBox[{"Table", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"L", " ", "=", 
      RowBox[{"DeleteDuplicates", "[", 
       RowBox[{"Flatten", "[", 
        RowBox[{"Drop", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Branch", "[", "HT", "]"}], "[", 
           RowBox[{"searches", "+", "1"}], "]"}], ",", "1"}], "]"}], "]"}], 
       "]"}]}], "\[IndentingNewLine]", ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1"}], "}"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RequiredSearches", " ", "=", " ", 
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"Framed", "[", 
      RowBox[{"Dynamic", "[", 
       RowBox[{"searches", "=", 
        RowBox[{"Searches", "[", 
         RowBox[{"depth", ",", "limbs"}], "]"}]}], "]"}], "]"}], ",", "Black",
      ",", "18"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ProgressBar", " ", "=", " ", 
   RowBox[{"Row", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Dynamic", "[", 
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{
          "\"\<Collecting Data for \>\"", "<>", "SearchTerm", "<>", 
           "\"\<: \>\""}], ",", "Bold"}], "]"}], "]"}], ",", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"ProgressIndicator", "[", 
         RowBox[{"Dynamic", "[", 
          RowBox[{"reps", "/", "searches"}], "]"}], "]"}], "]"}]}], "}"}], 
     ",", 
     RowBox[{"ImageSize", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"500", ",", "40"}], "}"}]}], ",", " ", 
     RowBox[{"Alignment", "\[Rule]", "Center"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"CompleteMessage", "[", "b_", "]"}], ":=", 
   RowBox[{"Button", "[", 
    RowBox[{
     RowBox[{"\"\<Show data from \>\"", "<>", "b", "<>", "\"\<.\>\""}], ",", 
     RowBox[{"Refresher", "[", "SearchTerm", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ProgressUpdater", " ", "=", " ", 
    RowBox[{"Dynamic", "[", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"reps", "\[Equal]", "0"}], ",", "\"\<\>\"", ",", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"reps", "<", "searches"}], ",", " ", "ProgressBar", ",", " ", 
         RowBox[{"CompleteMessage", "[", "SearchTerm", "]"}]}], "]"}]}], 
      "]"}], "]"}]}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"x", "[", "1", "]"}], "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Searches", "[", 
     RowBox[{"generations_", ",", "offspring_"}], "]"}], ":=", 
    RowBox[{"Last", "[", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"x", "[", 
         RowBox[{"n", "+", "1"}], "]"}], "=", 
        RowBox[{
         RowBox[{"offspring", "*", 
          RowBox[{"x", "[", "n", "]"}]}], "+", "1"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"n", ",", "generations"}], "}"}]}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SetQuery", "=", 
    RowBox[{"Panel", "[", "\[IndentingNewLine]", 
     RowBox[{"Deploy", "[", "\[IndentingNewLine]", 
      RowBox[{"Column", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Twitter Networks\>\"", ",", "Bold", ",", "20"}], 
           "]"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Grid", "[", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Transpose", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<Search Term\>\"", ",", "SearchColor", ",", 
                   "SearchSize"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<Number of Generations\>\"", ",", "SearchColor", ",", 
                   "SearchSize"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<Number of Offspring\>\"", ",", "SearchColor", ",", 
                   "SearchSize"}], "]"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"Style", "[", 
                  RowBox[{
                  "\"\<Required Searches\>\"", ",", "SearchColor", ",", 
                   "SearchSize"}], "]"}]}], "}"}], ",", "\[IndentingNewLine]",
                "\[IndentingNewLine]", 
               RowBox[{"{", 
                RowBox[{
                "QueryTerm", ",", "SelectDepth", ",", "SelectLimbs", ",", 
                 "RequiredSearches"}], "}"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"ItemSize", "\[Rule]", "All"}], ",", 
            RowBox[{"Alignment", "\[Rule]", "Left"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{"Row", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"Button", "[", 
              RowBox[{"\"\<Begin Search\>\"", ",", 
               RowBox[{"Crawl", "[", "SearchTerm", "]"}], ",", 
               RowBox[{"Method", "\[Rule]", "\"\<Queued\>\""}], ",", 
               RowBox[{"ImageSize", "\[Rule]", "250"}]}], "]"}], "}"}], ",", 
            RowBox[{"ImageSize", "\[Rule]", 
             RowBox[{"{", 
              RowBox[{"500", ",", "25"}], "}"}]}], ",", 
            RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}], ",", 
          "\[IndentingNewLine]", "\[IndentingNewLine]", "ProgressUpdater"}], 
         "\[IndentingNewLine]", "}"}], "\[IndentingNewLine]", ",", "Center"}],
        "]"}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Refresher", "[", "NewTags_", "]"}], ":=", 
    RowBox[{"Table", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"L", " ", "=", 
       RowBox[{"DeleteDuplicates", "[", 
        RowBox[{"Flatten", "[", 
         RowBox[{"Drop", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Branch", "[", "HT", "]"}], "[", 
            RowBox[{"searches", "+", "1"}], "]"}], ",", "1"}], "]"}], "]"}], 
        "]"}]}], "\[IndentingNewLine]", ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1"}], "}"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"GTypeSelect", " ", "=", " ", 
    RowBox[{"PopupMenu", "[", 
     RowBox[{
      RowBox[{"Dynamic", "[", "GType", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{
       "\"\<Modularity\>\"", ",", "\"\<Centrality\>\"", " ", ",", " ", 
        "\"\<CliquePercolation\>\"", " ", ",", " ", "\"\<Hierarchical\>\"", 
        ",", " ", "\"\<Spectral\>\""}], "}"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"GPTypeSelect", " ", "=", " ", 
    RowBox[{"PopupMenu", "[", 
     RowBox[{
      RowBox[{"Dynamic", "[", "GPType", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{
       "\"\<SpringElectricalEmbedding\>\"", ",", "\"\<SpringEmbedding\>\"", 
        ",", "\"\<HighDimensionalEmbedding\>\"", ",", 
        "\"\<CircularEmbedding\>\"", ",", "\"\<RandomEmbedding\>\"", ",", 
        "\"\<LinearEmbedding\>\""}], "}"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"GFind", "[", "t_", "]"}], ":=", 
    RowBox[{"FindGraphCommunities", "[", 
     RowBox[{
      RowBox[{"Graph", "[", "L", "]"}], ",", " ", 
      RowBox[{"Method", "\[Rule]", " ", "t"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"GPPlot", "[", "gp_", "]"}], ":=", 
    RowBox[{"GraphPlot", "[", 
     RowBox[{"L", ",", 
      RowBox[{"VertexLabeling", "\[Rule]", "\"\<True\>\""}], ",", " ", 
      RowBox[{"ImageSize", "\[Rule]", "500"}], ",", 
      RowBox[{"Method", "\[Rule]", "GPType"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"GPlot", "[", "p_", "]"}], ":=", 
    RowBox[{"CommunityGraphPlot", "[", 
     RowBox[{
      RowBox[{"Graph", "[", "L", "]"}], ",", "p", ",", 
      RowBox[{"CommunityLabels", "\[Rule]", 
       RowBox[{"Take", "[", 
        RowBox[{"p", ",", "All", ",", "1"}], "]"}]}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SetBPlot", " ", "=", " ", 
    RowBox[{"Panel", "[", "\[IndentingNewLine]", 
     RowBox[{"Column", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Select Graph Plot Type:  \>\"", ",", " ", "18"}], 
            "]"}], ",", "GPTypeSelect"}], "}"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", 
         RowBox[{"GPPlot", "[", "L", "]"}], "]"}]}], "\[IndentingNewLine]", 
       "}"}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SetCPlot", " ", "=", " ", 
    RowBox[{"Panel", "[", "\[IndentingNewLine]", 
     RowBox[{"Column", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<Select Community Type:  \>\"", ",", " ", "18"}], 
            "]"}], ",", "GTypeSelect"}], "}"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", 
         RowBox[{"GPlot", "[", 
          RowBox[{"GFind", "[", "GType", "]"}], "]"}], "]"}]}], 
       "\[IndentingNewLine]", "}"}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"PlotRefresh", " ", "=", " ", 
    RowBox[{"Button", "[", 
     RowBox[{"\"\<Refresh Plot\>\"", ",", " ", 
      RowBox[{"Refresher", "[", "SearchTerm", "]"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SetPlot", " ", "=", 
    RowBox[{"Panel", "[", 
     RowBox[{"Column", "[", 
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"SetterBar", "[", 
         RowBox[{
          RowBox[{"Dynamic", "[", "PlotType", "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"SetBPlot", "\[Rule]", "\"\<Basic Plots\>\""}], ",", 
            RowBox[{"SetCPlot", "\[Rule]", "\"\<Community Plots\>\""}]}], 
           "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", "PlotType", "]"}]}], "}"}], "]"}], "]"}]}], 
   ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"fs", "=", "20"}], ";", " ", 
  RowBox[{"(*", 
   RowBox[{"select", " ", "size", " ", "of", " ", "fields"}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"SearchSize", " ", "=", " ", "14"}], ";", " ", 
  RowBox[{"(*", 
   RowBox[{
   "size", " ", "of", " ", "text", " ", "for", " ", "search", " ", 
    "settings"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"SearchColor", " ", "=", " ", "Black"}], ";", " ", 
  RowBox[{"(*", 
   RowBox[{
   "color", " ", "of", " ", "text", " ", "for", " ", "search", " ", 
    "settings"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{"ProgressMessage", " ", "=", " ", "\"\<prog message\>\""}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"PreMessage", "=", " ", "\"\<pre message\>\""}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ShowPlot", " ", "=", " ", 
    RowBox[{"Dynamic", "[", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"reps", "\[Equal]", "0"}], ",", "PreMessage", ",", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"reps", "<", "searches"}], ",", " ", "ProgressMessage", ",", 
         " ", "SetPlot"}], "]"}]}], "]"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Panel", "[", 
   RowBox[{"{", 
    RowBox[{"SetQuery", ",", "ShowPlot"}], "}"}], "]"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input"],

Cell[BoxData[
 PanelBox[
  RowBox[{"{", 
   RowBox[{
    PanelBox[
     TagBox[
      TagBox[GridBox[{
         {
          StyleBox["\<\"Twitter Networks\"\>",
           StripOnInput->False,
           FontSize->20,
           FontWeight->Bold]},
         {
          TagBox[GridBox[{
             {
              StyleBox["\<\"Search Term\"\>",
               StripOnInput->False,
               LineColor->GrayLevel[0],
               FrontFaceColor->GrayLevel[0],
               BackFaceColor->GrayLevel[0],
               GraphicsColor->GrayLevel[0],
               FontSize->14,
               FontColor->GrayLevel[0]], 
              InputFieldBox[Dynamic[$CellContext`SearchTerm], String]},
             {
              StyleBox["\<\"Number of Generations\"\>",
               StripOnInput->False,
               LineColor->GrayLevel[0],
               FrontFaceColor->GrayLevel[0],
               BackFaceColor->GrayLevel[0],
               GraphicsColor->GrayLevel[0],
               FontSize->14,
               FontColor->GrayLevel[0]], 
              
              PopupMenuBox[Dynamic[$CellContext`depth], {1->"1", 2->"2", 3->
               "3", 4->"4", 5->"5", 6->"6", 7->"7", 8->"8", 9->"9", 10->"10"},
               
               FieldSize->20]},
             {
              StyleBox["\<\"Number of Offspring\"\>",
               StripOnInput->False,
               LineColor->GrayLevel[0],
               FrontFaceColor->GrayLevel[0],
               BackFaceColor->GrayLevel[0],
               GraphicsColor->GrayLevel[0],
               FontSize->14,
               FontColor->GrayLevel[0]], 
              
              PopupMenuBox[Dynamic[$CellContext`limbs], {1->"1", 2->"2", 3->
               "3", 4->"4", 5->"5", 6->"6", 7->"7", 8->"8", 9->"9", 10->"10"},
               
               FieldSize->20]},
             {
              StyleBox["\<\"Required Searches\"\>",
               StripOnInput->False,
               LineColor->GrayLevel[0],
               FrontFaceColor->GrayLevel[0],
               BackFaceColor->GrayLevel[0],
               GraphicsColor->GrayLevel[0],
               FontSize->14,
               FontColor->GrayLevel[0]], 
              StyleBox[
               FrameBox[
                
                DynamicBox[
                 ToBoxes[$CellContext`searches = \
$CellContext`Searches[$CellContext`depth, $CellContext`limbs], StandardForm],
                 ImageSizeCache->{122., {3., 14.}}],
                StripOnInput->False],
               StripOnInput->False,
               LineColor->GrayLevel[0],
               FrontFaceColor->GrayLevel[0],
               BackFaceColor->GrayLevel[0],
               GraphicsColor->GrayLevel[0],
               FontSize->18,
               FontColor->GrayLevel[0]]}
            },
            AutoDelete->False,
            ColumnsEqual->True,
            GridBoxAlignment->{"Columns" -> {{Left}}},
            GridBoxItemSize->{},
            RowsEqual->True],
           "Grid"]},
         {
          
          TemplateBox[{
           ButtonBox[
            "\"Begin Search\"", Appearance -> Automatic, 
             ButtonFunction :> $CellContext`Crawl[$CellContext`SearchTerm], 
             Evaluator -> Automatic, ImageSize -> 250, Method -> "Queued"]},
           "Row",
           
           DisplayFunction->(
            PaneBox[#, Alignment -> Right, ImageSize -> {500, 25}]& ),
           InterpretationFunction->(RowBox[{"Row", "[", 
              RowBox[{
                RowBox[{"{", #, "}"}], ",", 
                RowBox[{"ImageSize", "\[Rule]", 
                  RowBox[{"{", 
                    RowBox[{"500", ",", "25"}], "}"}]}], ",", 
                RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]& )]},
         {
          DynamicBox[ToBoxes[
            If[$CellContext`reps == 0, "", 
             
             If[$CellContext`reps < $CellContext`searches, \
$CellContext`ProgressBar, 
              $CellContext`CompleteMessage[$CellContext`SearchTerm]]], 
            StandardForm],
           ImageSizeCache->{370., {2., 8.}}]}
        },
        DefaultBaseStyle->"Column",
        GridBoxAlignment->{"Columns" -> {{Center}}},
        GridBoxItemSize->{
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
       "Column"],
      Deploy,
      DefaultBaseStyle->"Deploy"]], ",", 
    DynamicBox[ToBoxes[
      If[$CellContext`reps == 0, $CellContext`PreMessage, 
       If[$CellContext`reps < $CellContext`searches, \
$CellContext`ProgressMessage, $CellContext`SetPlot]], StandardForm],
     ImageSizeCache->{336., {2., 8.}}]}], "}"}]]], "Output"]
}, {2}]]
},
WindowSize->{740, 867},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (January 25, \
2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1485, 35, 24325, 636, 2817, "Input"],
Cell[25813, 673, 4612, 122, 291, "Output"]
}, {2}]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature OuDb@wszj82BBDKkFd6yT7Uj *)
