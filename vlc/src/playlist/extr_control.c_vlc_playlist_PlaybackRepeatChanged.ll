; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_control.c_vlc_playlist_PlaybackRepeatChanged.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_control.c_vlc_playlist_PlaybackRepeatChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.vlc_playlist_state = type { i32 }

@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i64 0, align 8
@on_playback_repeat_changed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"One\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Loop: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @vlc_playlist_PlaybackRepeatChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_PlaybackRepeatChanged(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_state, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 130
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @randomizer_SetLoop(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call i32 @vlc_playlist_state_Save(%struct.TYPE_8__* %22, %struct.vlc_playlist_state* %4)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* @on_playback_repeat_changed, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vlc_playlist_Notify(%struct.TYPE_8__* %32, i32 %33, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_8__* %38, %struct.vlc_playlist_state* %4)
  store i8* null, i8** %5, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %49 [
    i32 128, label %43
    i32 130, label %45
    i32 129, label %47
  ]

43:                                               ; preds = %21
  %44 = call i8* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %5, align 8
  br label %49

45:                                               ; preds = %21
  %46 = call i8* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %5, align 8
  br label %49

47:                                               ; preds = %21
  %48 = call i8* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %21, %47, %45, %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @vlc_gettext(i8* %54)
  %56 = call i32 @vlc_player_osd_Message(i32 %52, i32 %53, i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @VLC_UNUSED(i8* %57)
  ret void
}

declare dso_local i32 @randomizer_SetLoop(i32*, i32) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_8__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_8__*, %struct.vlc_playlist_state*) #1

declare dso_local i8* @N_(i8*) #1

declare dso_local i32 @vlc_player_osd_Message(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vlc_gettext(i8*) #1

declare dso_local i32 @VLC_UNUSED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
