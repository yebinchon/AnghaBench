; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-color.c_svg_parse_color_from_style.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-color.c_svg_parse_color_from_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"fill:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"stroke:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svg_parse_color_from_style(i32* %0, i32* %1, i8* %2, i32* %3, float* %4, i32* %5, float* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32* %5, i32** %13, align 8
  store float* %6, float** %14, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %7
  %21 = load i8*, i8** %15, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 5
  store i8* %22, i8** %15, align 8
  br label %23

23:                                               ; preds = %35, %20
  %24 = load i8*, i8** %15, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** %15, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @svg_is_whitespace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %15, align 8
  br label %23

38:                                               ; preds = %33
  %39 = load i8*, i8** %15, align 8
  %40 = call i64 @strncmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load float*, float** %12, align 8
  %47 = call i32 @svg_parse_color(i32* %43, i32* %44, i8* %45, float* %46)
  %48 = load i32*, i32** %11, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49, %7
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @strstr(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %52, i8** %15, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %50
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 7
  store i8* %57, i8** %15, align 8
  br label %58

58:                                               ; preds = %70, %55
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %15, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @svg_is_whitespace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ false, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %15, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %15, align 8
  br label %58

73:                                               ; preds = %68
  %74 = load i8*, i8** %15, align 8
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load float*, float** %14, align 8
  %82 = call i32 @svg_parse_color(i32* %78, i32* %79, i8* %80, float* %81)
  %83 = load i32*, i32** %13, align 8
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %73
  br label %85

85:                                               ; preds = %84, %50
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @svg_is_whitespace(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @svg_parse_color(i32*, i32*, i8*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
