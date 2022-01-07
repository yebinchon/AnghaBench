; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_quant_enc.c_QualityToJPEGCompression.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_quant_enc.c_QualityToJPEGCompression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @QualityToJPEGCompression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @QualityToJPEGCompression(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  store double 3.000000e-01, double* %5, align 8
  store double 8.500000e-01, double* %6, align 8
  store double 4.000000e-01, double* %7, align 8
  store double 9.000000e-01, double* %8, align 8
  store double 0xBFED1745D1745D17, double* %9, align 8
  %12 = load double, double* %4, align 8
  %13 = fcmp ogt double %12, 8.500000e-01
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %26

15:                                               ; preds = %2
  %16 = load double, double* %4, align 8
  %17 = fcmp olt double %16, 3.000000e-01
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15
  %20 = load double, double* %4, align 8
  %21 = fsub double %20, 3.000000e-01
  %22 = fmul double 0xBFED1745D1745D17, %21
  %23 = fadd double 9.000000e-01, %22
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi double [ 9.000000e-01, %18 ], [ %23, %19 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi double [ 4.000000e-01, %14 ], [ %25, %24 ]
  store double %27, double* %10, align 8
  %28 = load double, double* %3, align 8
  %29 = load double, double* %10, align 8
  %30 = call double @pow(double %28, double %29) #2
  store double %30, double* %11, align 8
  %31 = load double, double* %11, align 8
  ret double %31
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
