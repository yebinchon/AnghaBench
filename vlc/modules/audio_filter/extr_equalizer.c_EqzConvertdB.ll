; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzConvertdB.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_equalizer.c_EqzConvertdB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EQZ_IN_FACTOR = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @EqzConvertdB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @EqzConvertdB(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp olt float %3, -2.000000e+01
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store float -2.000000e+01, float* %2, align 4
  br label %11

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  %8 = fcmp ogt float %7, 2.000000e+01
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store float 2.000000e+01, float* %2, align 4
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %10, %5
  %12 = load float, float* @EQZ_IN_FACTOR, align 4
  %13 = load float, float* %2, align 4
  %14 = fdiv float %13, 2.000000e+01
  %15 = call float @powf(float 1.000000e+01, float %14) #2
  %16 = fsub float %15, 1.000000e+00
  %17 = fmul float %12, %16
  ret float %17
}

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
