; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_adjust.c_vlc_to_vdp_hue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_adjust.c_vlc_to_vdp_hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @vlc_to_vdp_hue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vlc_to_vdp_hue(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fdiv float %4, 3.600000e+02
  store float %5, float* %2, align 4
  %6 = load float, float* %2, align 4
  %7 = call float @modff(float %6, float* %3) #2
  store float %7, float* %2, align 4
  %8 = load float, float* %2, align 4
  %9 = fcmp ogt float %8, 5.000000e-01
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load float, float* %2, align 4
  %12 = fsub float %11, 1.000000e+00
  store float %12, float* %2, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load float, float* %2, align 4
  %15 = load i32, i32* @M_PI, align 4
  %16 = sitofp i32 %15 to double
  %17 = fmul double 2.000000e+00, %16
  %18 = fptrunc double %17 to float
  %19 = fmul float %14, %18
  ret float %19
}

; Function Attrs: nounwind
declare dso_local float @modff(float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
