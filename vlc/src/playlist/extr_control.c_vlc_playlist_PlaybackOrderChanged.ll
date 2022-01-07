; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_control.c_vlc_playlist_PlaybackOrderChanged.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_control.c_vlc_playlist_PlaybackOrderChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.vlc_playlist_state = type { i32 }

@VLC_PLAYLIST_PLAYBACK_REPEAT_ALL = common dso_local global i64 0, align 8
@on_playback_order_changed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Random: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @vlc_playlist_PlaybackOrderChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_PlaybackOrderChanged(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_state, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 128
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %13 = call i64 @randomizer_Count(i32* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @randomizer_Add(i32* %18, i32 %22, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 5
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @randomizer_SetLoop(i32* %35, i32 %36)
  br label %42

38:                                               ; preds = %1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = call i32 @randomizer_Clear(i32* %40)
  br label %42

42:                                               ; preds = %38, %10
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = call i32 @vlc_playlist_state_Save(%struct.TYPE_10__* %43, %struct.vlc_playlist_state* %4)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = load i32, i32* @on_playback_order_changed, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vlc_playlist_Notify(%struct.TYPE_10__* %53, i32 %54, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_10__* %59, %struct.vlc_playlist_state* %4)
  store i8* null, i8** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %68 [
    i32 129, label %64
    i32 128, label %66
  ]

64:                                               ; preds = %42
  %65 = call i8* @N_(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %65, i8** %5, align 8
  br label %68

66:                                               ; preds = %42
  %67 = call i8* @N_(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %42, %66, %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @vlc_gettext(i8* %73)
  %75 = call i32 @vlc_player_osd_Message(i32 %71, i32 %72, i32 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @VLC_UNUSED(i8* %76)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @randomizer_Count(i32*) #1

declare dso_local i32 @randomizer_Add(i32*, i32, i32) #1

declare dso_local i32 @randomizer_SetLoop(i32*, i32) #1

declare dso_local i32 @randomizer_Clear(i32*) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_10__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_10__*, %struct.vlc_playlist_state*) #1

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
