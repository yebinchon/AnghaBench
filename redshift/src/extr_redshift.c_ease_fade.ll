; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_ease_fade.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_ease_fade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @ease_fade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ease_fade(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp ole double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %18

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp oge double %8, 1.000000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store double 1.000000e+00, double* %2, align 8
  br label %18

11:                                               ; preds = %7
  %12 = load double, double* %3, align 8
  %13 = fmul double 0xC01D29CDCD322D18, %12
  %14 = call double @exp(double %13) #2
  %15 = fmul double 0xC0199DDFC3022550, %14
  %16 = call double @exp(double %15) #2
  %17 = fmul double 0x3FF011981D384782, %16
  store double %17, double* %2, align 8
  br label %18

18:                                               ; preds = %11, %10, %6
  %19 = load double, double* %2, align 8
  ret double %19
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
