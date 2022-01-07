; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_sharpen.c_vlc_to_vdp_sigma.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_sharpen.c_vlc_to_vdp_sigma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @vlc_to_vdp_sigma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vlc_to_vdp_sigma(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fdiv float %3, 2.000000e+00
  store float %4, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fcmp ogt float %5, 1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %8

8:                                                ; preds = %7, %1
  %9 = load float, float* %2, align 4
  %10 = fcmp olt float %9, -1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store float -1.000000e+00, float* %2, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load float, float* %2, align 4
  ret float %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
