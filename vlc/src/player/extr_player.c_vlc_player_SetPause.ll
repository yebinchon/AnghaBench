; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetPause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_SetPause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PAUSE_S = common dso_local global i32 0, align 4
@PLAYING_S = common dso_local global i32 0, align 4
@INPUT_CONTROL_SET_STATE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@OSD_PAUSE_ICON = common dso_local global i32 0, align 4
@OSD_PLAY_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @vlc_player_SetPause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_SetPause(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_player_input*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %8)
  store %struct.vlc_player_input* %9, %struct.vlc_player_input** %5, align 8
  %10 = load %struct.vlc_player_input*, %struct.vlc_player_input** %5, align 8
  %11 = icmp ne %struct.vlc_player_input* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.vlc_player_input*, %struct.vlc_player_input** %5, align 8
  %14 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %47

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @PAUSE_S, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @PLAYING_S, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %19, align 4
  %28 = load %struct.vlc_player_input*, %struct.vlc_player_input** %5, align 8
  %29 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INPUT_CONTROL_SET_STATE, align 4
  %32 = call i32 @input_ControlPushHelper(i32 %30, i32 %31, %struct.TYPE_3__* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @VLC_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %26
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @OSD_PAUSE_ICON, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @OSD_PLAY_ICON, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @vlc_player_osd_Icon(i32* %37, i32 %45)
  br label %47

47:                                               ; preds = %17, %44, %26
  ret void
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @input_ControlPushHelper(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @vlc_player_osd_Icon(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
