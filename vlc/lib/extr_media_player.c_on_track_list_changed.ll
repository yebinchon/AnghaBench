; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_track_list_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_track_list_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@VLC_PLAYER_LIST_ADDED = common dso_local global i32 0, align 4
@libvlc_MediaPlayerESAdded = common dso_local global i32 0, align 4
@VLC_PLAYER_LIST_REMOVED = common dso_local global i32 0, align 4
@libvlc_MediaPlayerESDeleted = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.vlc_player_track*, i8*)* @on_track_list_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_track_list_changed(i32* %0, i32 %1, %struct.vlc_player_track* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_player_track*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vlc_player_track* %2, %struct.vlc_player_track** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @VLC_PLAYER_LIST_ADDED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @libvlc_MediaPlayerESAdded, align 4
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  br label %29

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VLC_PLAYER_LIST_REMOVED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @libvlc_MediaPlayerESDeleted, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  br label %28

27:                                               ; preds = %20
  br label %48

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.vlc_player_track*, %struct.vlc_player_track** %7, align 8
  %31 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @track_type_from_cat(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.vlc_player_track*, %struct.vlc_player_track** %7, align 8
  %39 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vlc_es_id_GetInputId(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @libvlc_event_send(i32* %46, %struct.TYPE_11__* %10)
  br label %48

48:                                               ; preds = %29, %27
  ret void
}

declare dso_local i32 @track_type_from_cat(i32) #1

declare dso_local i32 @vlc_es_id_GetInputId(i32) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
