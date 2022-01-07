; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_length.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-parse.c_svg_parse_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @svg_parse_length(i8* %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float, align 4
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call float @fz_strtof(i8* %10, i8** %8)
  store float %11, float* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store float 0.000000e+00, float* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load float, float* %9, align 4
  store float %21, float* %4, align 4
  br label %92

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load float, float* %9, align 4
  %28 = fmul float %27, 1.000000e+00
  store float %28, float* %4, align 4
  br label %92

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load float, float* %9, align 4
  %35 = fmul float %34, 1.200000e+01
  store float %35, float* %4, align 4
  br label %92

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load float, float* %9, align 4
  %42 = fmul float %41, 0x4006AD5AC0000000
  store float %42, float* %4, align 4
  br label %92

43:                                               ; preds = %36
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load float, float* %9, align 4
  %49 = fmul float %48, 0x403C58B160000000
  store float %49, float* %4, align 4
  br label %92

50:                                               ; preds = %43
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load float, float* %9, align 4
  %56 = fmul float %55, 7.200000e+01
  store float %56, float* %4, align 4
  br label %92

57:                                               ; preds = %50
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load float, float* %9, align 4
  %63 = load float, float* %7, align 4
  %64 = fmul float %62, %63
  store float %64, float* %4, align 4
  br label %92

65:                                               ; preds = %57
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load float, float* %9, align 4
  %71 = load float, float* %7, align 4
  %72 = fmul float %70, %71
  %73 = fmul float %72, 5.000000e-01
  store float %73, float* %4, align 4
  br label %92

74:                                               ; preds = %65
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = load float, float* %9, align 4
  %80 = load float, float* %6, align 4
  %81 = fmul float %79, %80
  %82 = fmul float %81, 0x3F847AE140000000
  store float %82, float* %4, align 4
  br label %92

83:                                               ; preds = %74
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load float, float* %9, align 4
  store float %90, float* %4, align 4
  br label %92

91:                                               ; preds = %83
  store float 0.000000e+00, float* %4, align 4
  br label %92

92:                                               ; preds = %91, %89, %78, %69, %61, %54, %47, %40, %33, %26, %20, %15
  %93 = load float, float* %4, align 4
  ret float %93
}

declare dso_local float @fz_strtof(i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
