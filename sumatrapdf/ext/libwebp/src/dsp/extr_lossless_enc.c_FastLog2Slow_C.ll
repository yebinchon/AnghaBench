; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_lossless_enc.c_FastLog2Slow_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_lossless_enc.c_FastLog2Slow_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_LOOKUP_IDX_MAX = common dso_local global i32 0, align 4
@APPROX_LOG_WITH_CORRECTION_MAX = common dso_local global i32 0, align 4
@kLog2Table = common dso_local global i32* null, align 8
@APPROX_LOG_MAX = common dso_local global i32 0, align 4
@LOG_2_RECIPROCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32)* @FastLog2Slow_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @FastLog2Slow_C(i32 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LOG_LOOKUP_IDX_MAX, align 4
  %11 = icmp sge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @APPROX_LOG_WITH_CORRECTION_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %26, %17
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LOG_LOOKUP_IDX_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %19, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** @kLog2Table, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = sitofp i32 %37 to double
  store double %38, double* %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @APPROX_LOG_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = mul nsw i32 23, %46
  %48 = ashr i32 %47, 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sitofp i32 %49 to double
  %51 = load i32, i32* %6, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %50, %52
  %54 = load double, double* %7, align 8
  %55 = fadd double %54, %53
  store double %55, double* %7, align 8
  br label %56

56:                                               ; preds = %42, %30
  %57 = load double, double* %7, align 8
  %58 = fptrunc double %57 to float
  store float %58, float* %2, align 4
  br label %66

59:                                               ; preds = %1
  %60 = load i32, i32* @LOG_2_RECIPROCAL, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sitofp i32 %61 to double
  %63 = call i32 @log(double %62)
  %64 = mul nsw i32 %60, %63
  %65 = sitofp i32 %64 to float
  store float %65, float* %2, align 4
  br label %66

66:                                               ; preds = %59, %56
  %67 = load float, float* %2, align 4
  ret float %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
