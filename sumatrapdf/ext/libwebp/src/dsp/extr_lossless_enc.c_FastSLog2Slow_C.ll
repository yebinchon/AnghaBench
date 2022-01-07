; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_lossless_enc.c_FastSLog2Slow_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_lossless_enc.c_FastSLog2Slow_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_LOOKUP_IDX_MAX = common dso_local global i32 0, align 4
@APPROX_LOG_WITH_CORRECTION_MAX = common dso_local global i32 0, align 4
@kLog2Table = common dso_local global i32* null, align 8
@LOG_2_RECIPROCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32)* @FastSLog2Slow_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @FastSLog2Slow_C(i32 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
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
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sitofp i32 %18 to float
  store float %19, float* %7, align 4
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %28, %17
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LOG_LOOKUP_IDX_MAX, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %21, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = mul nsw i32 23, %36
  %38 = ashr i32 %37, 4
  store i32 %38, i32* %6, align 4
  %39 = load float, float* %7, align 4
  %40 = load i32*, i32** @kLog2Table, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %44, %45
  %47 = sitofp i32 %46 to float
  %48 = fmul float %39, %47
  %49 = load i32, i32* %6, align 4
  %50 = sitofp i32 %49 to float
  %51 = fadd float %48, %50
  store float %51, float* %2, align 4
  br label %61

52:                                               ; preds = %1
  %53 = load i32, i32* @LOG_2_RECIPROCAL, align 4
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = sitofp i32 %56 to double
  %58 = call i32 @log(double %57)
  %59 = mul nsw i32 %55, %58
  %60 = sitofp i32 %59 to float
  store float %60, float* %2, align 4
  br label %61

61:                                               ; preds = %52, %32
  %62 = load float, float* %2, align 4
  ret float %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
