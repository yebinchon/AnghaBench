; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetBinIdForEntropy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_GetBinIdForEntropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_PARTITIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double)* @GetBinIdForEntropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetBinIdForEntropy(double %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* %5, align 8
  %12 = fsub double %10, %11
  store double %12, double* %8, align 8
  %13 = load double, double* %8, align 8
  %14 = fcmp ogt double %13, 0.000000e+00
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load double, double* %7, align 8
  %17 = load double, double* %5, align 8
  %18 = fsub double %16, %17
  store double %18, double* %9, align 8
  %19 = load i32, i32* @NUM_PARTITIONS, align 4
  %20 = sitofp i32 %19 to double
  %21 = fsub double %20, 0x3EB0C6F7A0B5ED8D
  %22 = load double, double* %9, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %8, align 8
  %25 = fdiv double %23, %24
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
