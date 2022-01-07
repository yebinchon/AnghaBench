; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Volume.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSD_MUTE_ICON = common dso_local global i32 0, align 4
@OSD_VERT_SLIDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Volume: %ld%%\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_osd_Volume(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32** @vlc_player_osd_HoldAll(i32* %9, i64* %5)
  store i32** %10, i32*** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @vlc_player_aout_IsMuted(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call float @vlc_player_aout_GetVolume(i32* %13)
  %15 = fmul float %14, 1.000000e+02
  %16 = call i32 @lroundf(float %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32**, i32*** %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @OSD_MUTE_ICON, align 4
  %26 = call i32 @vouts_osd_Icon(i32** %23, i64 %24, i32 %25)
  br label %43

27:                                               ; preds = %19, %2
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @vlc_player_vout_IsFullscreen(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32**, i32*** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @OSD_VERT_SLIDER, align 4
  %36 = call i32 @vouts_osd_Slider(i32** %32, i64 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load i32**, i32*** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @vouts_osd_Message(i32** %38, i64 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %22
  %44 = load i32*, i32** %3, align 8
  %45 = load i32**, i32*** %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @vlc_player_osd_ReleaseAll(i32* %44, i32** %45, i64 %46)
  ret void
}

declare dso_local i32** @vlc_player_osd_HoldAll(i32*, i64*) #1

declare dso_local i32 @vlc_player_aout_IsMuted(i32*) #1

declare dso_local i32 @lroundf(float) #1

declare dso_local float @vlc_player_aout_GetVolume(i32*) #1

declare dso_local i32 @vouts_osd_Icon(i32**, i64, i32) #1

declare dso_local i64 @vlc_player_vout_IsFullscreen(i32*) #1

declare dso_local i32 @vouts_osd_Slider(i32**, i64, i32, i32) #1

declare dso_local i32 @vouts_osd_Message(i32**, i64, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_player_osd_ReleaseAll(i32*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
