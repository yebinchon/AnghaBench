; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_clip_unit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_splitter/extr_panoramix.c_clip_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @clip_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @clip_unit(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fcmp ogt double %9, 1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  %13 = load float, float* %2, align 4
  %14 = fpext float %13 to double
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi double [ 1.000000e+00, %11 ], [ %14, %12 ]
  br label %17

17:                                               ; preds = %15, %6
  %18 = phi double [ 0.000000e+00, %6 ], [ %16, %15 ]
  %19 = fptrunc double %18 to float
  ret float %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
