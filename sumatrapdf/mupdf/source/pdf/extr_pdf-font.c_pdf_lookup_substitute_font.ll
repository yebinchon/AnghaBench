; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_lookup_substitute_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_lookup_substitute_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Courier-BoldOblique\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Courier-Bold\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Courier-Oblique\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Times-BoldItalic\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Times-Bold\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Times-Italic\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Helvetica-BoldOblique\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Helvetica-Bold\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Helvetica-Oblique\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_lookup_substitute_font(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %6
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i8* @fz_lookup_base14_font(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i8* %25, i8** %7, align 8
  br label %94

26:                                               ; preds = %19
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i8* @fz_lookup_base14_font(i32* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  store i8* %29, i8** %7, align 8
  br label %94

30:                                               ; preds = %16
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i8* @fz_lookup_base14_font(i32* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %35)
  store i8* %36, i8** %7, align 8
  br label %94

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @fz_lookup_base14_font(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %39)
  store i8* %40, i8** %7, align 8
  br label %94

41:                                               ; preds = %6
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i8* @fz_lookup_base14_font(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %52)
  store i8* %53, i8** %7, align 8
  br label %94

54:                                               ; preds = %47
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i8* @fz_lookup_base14_font(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %56)
  store i8* %57, i8** %7, align 8
  br label %94

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i8* @fz_lookup_base14_font(i32* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %63)
  store i8* %64, i8** %7, align 8
  br label %94

65:                                               ; preds = %58
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i8* @fz_lookup_base14_font(i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %67)
  store i8* %68, i8** %7, align 8
  br label %94

69:                                               ; preds = %41
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i8* @fz_lookup_base14_font(i32* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %77)
  store i8* %78, i8** %7, align 8
  br label %94

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i8* @fz_lookup_base14_font(i32* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %81)
  store i8* %82, i8** %7, align 8
  br label %94

83:                                               ; preds = %69
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i8* @fz_lookup_base14_font(i32* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %88)
  store i8* %89, i8** %7, align 8
  br label %94

90:                                               ; preds = %83
  %91 = load i32*, i32** %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i8* @fz_lookup_base14_font(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* %92)
  store i8* %93, i8** %7, align 8
  br label %94

94:                                               ; preds = %90, %86, %79, %75, %65, %61, %54, %50, %37, %33, %26, %22
  %95 = load i8*, i8** %7, align 8
  ret i8* %95
}

declare dso_local i8* @fz_lookup_base14_font(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
