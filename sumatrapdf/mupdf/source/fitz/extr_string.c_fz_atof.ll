; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_atof.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_fz_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@FLT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @fz_atof(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %29

8:                                                ; preds = %1
  store i64 0, i64* @errno, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call float @fz_strtof(i8* %9, i32* null)
  store float %10, float* %4, align 4
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @ERANGE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load float, float* %4, align 4
  %16 = fcmp oeq float %15, 0.000000e+00
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %8
  %18 = load float, float* %4, align 4
  %19 = call i64 @isnan(float %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  store float 1.000000e+00, float* %2, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* @FLT_MAX, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* @FLT_MAX, align 4
  %27 = call float @fz_clamp(float %23, i32 %25, i32 %26)
  store float %27, float* %4, align 4
  %28 = load float, float* %4, align 4
  store float %28, float* %2, align 4
  br label %29

29:                                               ; preds = %22, %21, %7
  %30 = load float, float* %2, align 4
  ret float %30
}

declare dso_local float @fz_strtof(i8*, i32*) #1

declare dso_local i64 @isnan(float) #1

declare dso_local float @fz_clamp(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
