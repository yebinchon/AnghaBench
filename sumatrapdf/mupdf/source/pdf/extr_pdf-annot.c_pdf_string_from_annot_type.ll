; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_string_from_annot_type.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_string_from_annot_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FreeText\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"PolyLine\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Highlight\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Squiggly\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"StrikeOut\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Redact\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Stamp\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Caret\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Ink\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Popup\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"FileAttachment\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Sound\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Movie\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Widget\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"PrinterMark\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"TrapNet\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Watermark\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_string_from_annot_type(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %33 [
    i32 132, label %7
    i32 145, label %8
    i32 149, label %9
    i32 146, label %10
    i32 136, label %11
    i32 151, label %12
    i32 143, label %13
    i32 142, label %14
    i32 148, label %15
    i32 130, label %16
    i32 135, label %17
    i32 133, label %18
    i32 139, label %19
    i32 134, label %20
    i32 152, label %21
    i32 147, label %22
    i32 141, label %23
    i32 150, label %24
    i32 137, label %25
    i32 144, label %26
    i32 128, label %27
    i32 138, label %28
    i32 140, label %29
    i32 131, label %30
    i32 129, label %31
    i32 153, label %32
  ]

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %34

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %34

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %34

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %34

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %34

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %34

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %34

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %34

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %34

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %34

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %34

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %34

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %34

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %34

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %34

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %34

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %34

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %34

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %34

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %34

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %34

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %34

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %34

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %34

31:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %34

32:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %34

33:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
