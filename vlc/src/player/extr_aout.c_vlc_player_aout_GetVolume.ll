; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_GetVolume.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_GetVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @vlc_player_aout_GetVolume(i32* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @vlc_player_aout_Hold(i32* %6)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store float -1.000000e+00, float* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = call float @aout_VolumeGet(i32* %12)
  store float %13, float* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @aout_Release(i32* %14)
  %16 = load float, float* %5, align 4
  store float %16, float* %2, align 4
  br label %17

17:                                               ; preds = %11, %10
  %18 = load float, float* %2, align 4
  ret float %18
}

declare dso_local i32* @vlc_player_aout_Hold(i32*) #1

declare dso_local float @aout_VolumeGet(i32*) #1

declare dso_local i32 @aout_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
