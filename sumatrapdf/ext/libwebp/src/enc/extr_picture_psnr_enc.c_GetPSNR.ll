; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_GetPSNR.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_GetPSNR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMinDistortion_dB = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @GetPSNR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @GetPSNR(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp ogt double %5, 0.000000e+00
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load double, double* %4, align 8
  %9 = fcmp ogt double %8, 0.000000e+00
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = load double, double* %4, align 8
  %13 = fmul double %12, 2.550000e+02
  %14 = fmul double %13, 2.550000e+02
  %15 = fdiv double %11, %14
  %16 = call double @log(double %15) #2
  %17 = fmul double 0xC0115F2CEBF15542, %16
  br label %20

18:                                               ; preds = %7, %2
  %19 = load double, double* @kMinDistortion_dB, align 8
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi double [ %17, %10 ], [ %19, %18 ]
  ret double %21
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
