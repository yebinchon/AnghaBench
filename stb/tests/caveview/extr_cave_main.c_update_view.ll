; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_update_view.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_update_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_view_z = common dso_local global float 0.000000e+00, align 4
@pending_view_x = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_view(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = fmul float %5, 3.000000e+02
  %7 = load float, float* @pending_view_z, align 4
  %8 = fsub float %7, %6
  store float %8, float* @pending_view_z, align 4
  %9 = load float, float* %4, align 4
  %10 = fmul float %9, 7.000000e+02
  %11 = load float, float* @pending_view_x, align 4
  %12 = fsub float %11, %10
  store float %12, float* @pending_view_x, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
