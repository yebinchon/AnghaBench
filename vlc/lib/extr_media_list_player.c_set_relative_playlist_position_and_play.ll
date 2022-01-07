; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_set_relative_playlist_position_and_play.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_set_relative_playlist_position_and_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"No media list\00", align 1
@libvlc_playback_mode_repeat = common dso_local global i64 0, align 8
@libvlc_playback_mode_loop = common dso_local global i64 0, align 8
@libvlc_MediaListPlayerPlayed = common dso_local global i32 0, align 4
@libvlc_MediaListPlayerNextItemSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @set_relative_playlist_position_and_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_relative_playlist_position_and_play(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = call i32 @assert_locked(%struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %107

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @libvlc_media_list_lock(i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @libvlc_playback_mode_repeat, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %19
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @libvlc_playback_mode_loop, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %42, %32
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @get_next_path(%struct.TYPE_13__* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @set_current_playing_item(%struct.TYPE_13__* %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %39

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @get_previous_path(%struct.TYPE_13__* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @set_current_playing_item(%struct.TYPE_13__* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %52

64:                                               ; preds = %52
  br label %69

65:                                               ; preds = %19
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @set_current_playing_item(%struct.TYPE_13__* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @libvlc_media_list_unlock(i32 %75)
  %77 = load i32, i32* @libvlc_MediaListPlayerPlayed, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = call i32 @libvlc_event_send(i32* %80, %struct.TYPE_14__* %8)
  store i32 -1, i32* %3, align 4
  br label %107

82:                                               ; preds = %69
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @libvlc_media_player_play(i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @libvlc_media_list_unlock(i32 %89)
  %91 = load i32, i32* @libvlc_MediaListPlayerNextItemSet, align 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32* @libvlc_media_list_item_at_path(i32 %95, i32 %96)
  store i32* %97, i32** %10, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32* %98, i32** %101, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = call i32 @libvlc_event_send(i32* %103, %struct.TYPE_14__* %9)
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @libvlc_media_release(i32* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %82, %72, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @libvlc_media_list_lock(i32) #1

declare dso_local i32 @get_next_path(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @set_current_playing_item(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @get_previous_path(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @libvlc_media_list_unlock(i32) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @libvlc_media_player_play(i32) #1

declare dso_local i32* @libvlc_media_list_item_at_path(i32, i32) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
