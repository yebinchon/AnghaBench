; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_PredictionCostSpatialHistogram.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_PredictionCostSpatialHistogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float ([256 x i32]*, [256 x i32]*)* @PredictionCostSpatialHistogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @PredictionCostSpatialHistogram([256 x i32]* %0, [256 x i32]* %1) #0 {
  %3 = alloca [256 x i32]*, align 8
  %4 = alloca [256 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store [256 x i32]* %0, [256 x i32]** %3, align 8
  store [256 x i32]* %1, [256 x i32]** %4, align 8
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  store double 0x3FEE147AE147AE14, double* %7, align 8
  %12 = load [256 x i32]*, [256 x i32]** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 %14
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* %15, i64 0, i64 0
  %17 = call i64 @PredictionCostSpatial(i32* %16, i32 1, double 0x3FEE147AE147AE14)
  %18 = sitofp i64 %17 to double
  %19 = load double, double* %6, align 8
  %20 = fadd double %19, %18
  store double %20, double* %6, align 8
  %21 = load [256 x i32]*, [256 x i32]** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 %23
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %24, i64 0, i64 0
  %26 = load [256 x i32]*, [256 x i32]** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* %26, i64 %28
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %29, i64 0, i64 0
  %31 = call i64 @VP8LCombinedShannonEntropy(i32* %25, i32* %30)
  %32 = sitofp i64 %31 to double
  %33 = load double, double* %6, align 8
  %34 = fadd double %33, %32
  store double %34, double* %6, align 8
  br label %35

35:                                               ; preds = %11
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load double, double* %6, align 8
  %40 = fptrunc double %39 to float
  ret float %40
}

declare dso_local i64 @PredictionCostSpatial(i32*, i32, double) #1

declare dso_local i64 @VP8LCombinedShannonEntropy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
