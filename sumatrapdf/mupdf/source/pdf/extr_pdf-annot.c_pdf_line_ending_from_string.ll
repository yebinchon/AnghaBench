; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_line_ending_from_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_line_ending_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@PDF_ANNOT_LE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@PDF_ANNOT_LE_SQUARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@PDF_ANNOT_LE_CIRCLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@PDF_ANNOT_LE_DIAMOND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"OpenArrow\00", align 1
@PDF_ANNOT_LE_OPEN_ARROW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ClosedArrow\00", align 1
@PDF_ANNOT_LE_CLOSED_ARROW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Butt\00", align 1
@PDF_ANNOT_LE_BUTT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"ROpenArrow\00", align 1
@PDF_ANNOT_LE_R_OPEN_ARROW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"RClosedArrow\00", align 1
@PDF_ANNOT_LE_R_CLOSED_ARROW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"Slash\00", align 1
@PDF_ANNOT_LE_SLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_line_ending_from_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @PDF_ANNOT_LE_NONE, align 4
  store i32 %10, i32* %3, align 4
  br label %67

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @PDF_ANNOT_LE_SQUARE, align 4
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PDF_ANNOT_LE_CIRCLE, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @PDF_ANNOT_LE_DIAMOND, align 4
  store i32 %28, i32* %3, align 4
  br label %67

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @PDF_ANNOT_LE_OPEN_ARROW, align 4
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @PDF_ANNOT_LE_CLOSED_ARROW, align 4
  store i32 %40, i32* %3, align 4
  br label %67

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @PDF_ANNOT_LE_BUTT, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @PDF_ANNOT_LE_R_OPEN_ARROW, align 4
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @PDF_ANNOT_LE_R_CLOSED_ARROW, align 4
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @PDF_ANNOT_LE_SLASH, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @PDF_ANNOT_LE_NONE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
