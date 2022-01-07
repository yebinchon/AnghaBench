; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_interface.c_PlaylistConfigureFromVariables.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_interface.c_PlaylistConfigureFromVariables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@VLC_PLAYLIST_PLAYBACK_REPEAT_ALL = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_REPEAT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"play-and-exit\00", align 1
@VLC_PLAYER_MEDIA_STOPPED_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"play-and-stop\00", align 1
@VLC_PLAYER_MEDIA_STOPPED_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"play-and-pause\00", align 1
@VLC_PLAYER_MEDIA_STOPPED_PAUSE = common dso_local global i32 0, align 4
@VLC_PLAYER_MEDIA_STOPPED_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"start-paused\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"playlist-cork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @PlaylistConfigureFromVariables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlaylistConfigureFromVariables(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @var_InheritBool(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  store i32 %15, i32* %5, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @var_InheritBool(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT, align 4
  store i32 %23, i32* %6, align 4
  br label %33

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @var_InheritBool(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 4
  store i32 %29, i32* %6, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_NONE, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @var_InheritBool(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @VLC_PLAYER_MEDIA_STOPPED_EXIT, align 4
  store i32 %38, i32* %7, align 4
  br label %55

39:                                               ; preds = %33
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @var_InheritBool(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @VLC_PLAYER_MEDIA_STOPPED_STOP, align 4
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @var_InheritBool(i32* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @VLC_PLAYER_MEDIA_STOPPED_PAUSE, align 4
  store i32 %50, i32* %7, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @VLC_PLAYER_MEDIA_STOPPED_CONTINUE, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @var_InheritBool(i32* %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @var_InheritBool(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @vlc_playlist_Lock(i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %65, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32* @vlc_playlist_GetPlayer(i32* %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @vlc_player_SetMediaStoppedAction(i32* %70, i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @vlc_player_SetStartPaused(i32* %73, i32 %74)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vlc_player_SetPauseOnCork(i32* %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @vlc_playlist_Unlock(i32* %79)
  ret void
}

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i32) #1

declare dso_local i32 @vlc_playlist_SetPlaybackRepeat(i32*, i32) #1

declare dso_local i32* @vlc_playlist_GetPlayer(i32*) #1

declare dso_local i32 @vlc_player_SetMediaStoppedAction(i32*, i32) #1

declare dso_local i32 @vlc_player_SetStartPaused(i32*, i32) #1

declare dso_local i32 @vlc_player_SetPauseOnCork(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
