; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_libvlc_media_list_player_play_item_at_index.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_list_player.c_libvlc_media_list_player_play_item_at_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@libvlc_MediaListPlayerNextItemSet = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_list_player_play_item_at_index(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i32 @lock(%struct.TYPE_12__* %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @libvlc_media_list_path_with_root_index(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @set_current_playing_item(%struct.TYPE_12__* %13, i32 %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @libvlc_media_player_get_media(i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @libvlc_media_player_play(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @unlock(%struct.TYPE_12__* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* @libvlc_MediaListPlayerNextItemSet, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = call i32 @libvlc_event_send(i32* %37, %struct.TYPE_13__* %8)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @libvlc_media_release(i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @lock(%struct.TYPE_12__*) #1

declare dso_local i32 @libvlc_media_list_path_with_root_index(i32) #1

declare dso_local i32 @set_current_playing_item(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @libvlc_media_player_get_media(i32) #1

declare dso_local i32 @libvlc_media_player_play(i32) #1

declare dso_local i32 @unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
