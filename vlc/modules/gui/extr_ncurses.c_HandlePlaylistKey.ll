; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandlePlaylistKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandlePlaylistKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.vlc_playlist_sort_criterion = type { i32, i32 }

@VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@VLC_PLAYLIST_SORT_ORDER_ASCENDING = common dso_local global i32 0, align 4
@VLC_PLAYLIST_SORT_ORDER_DESCENDING = common dso_local global i32 0, align 4
@VLC_PLAYLIST_SORT_KEY_TITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @HandlePlaylistKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandlePlaylistKey(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlc_playlist_sort_criterion, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %152 [
    i32 114, label %18
    i32 108, label %37
    i32 82, label %37
    i32 111, label %64
    i32 79, label %64
    i32 59, label %84
    i32 103, label %87
    i32 68, label %98
    i32 133, label %98
    i32 127, label %98
    i32 132, label %98
    i32 131, label %133
    i32 13, label %133
    i32 10, label %133
  ]

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @vlc_playlist_Lock(i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @vlc_playlist_GetPlaybackOrder(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %32, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @vlc_playlist_Unlock(i32* %35)
  store i32 1, i32* %3, align 4
  br label %153

37:                                               ; preds = %2, %2
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @vlc_playlist_Lock(i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @vlc_playlist_GetPlaybackRepeat(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %58 [
    i32 128, label %43
    i32 130, label %48
    i32 129, label %53
  ]

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 108
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 130, i32 129
  store i32 %47, i32* %9, align 4
  br label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 108
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 128, i32 129
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 108
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 130, i32 128
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %37, %53, %48, %43
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @vlc_playlist_Unlock(i32* %62)
  store i32 1, i32* %3, align 4
  br label %153

64:                                               ; preds = %2, %2
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @vlc_playlist_Lock(i32* %65)
  %67 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %10, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 111
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @VLC_PLAYLIST_SORT_ORDER_ASCENDING, align 4
  br label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @VLC_PLAYLIST_SORT_ORDER_DESCENDING, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %67, align 4
  %76 = getelementptr inbounds %struct.vlc_playlist_sort_criterion, %struct.vlc_playlist_sort_criterion* %10, i32 0, i32 1
  %77 = load i32, i32* @VLC_PLAYLIST_SORT_KEY_TITLE, align 4
  store i32 %77, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @vlc_playlist_Sort(i32* %78, %struct.vlc_playlist_sort_criterion* %10, i32 1)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @vlc_playlist_Unlock(i32* %82)
  store i32 1, i32* %3, align 4
  br label %153

84:                                               ; preds = %2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = call i32 @SearchPlaylist(%struct.TYPE_8__* %85)
  store i32 1, i32* %3, align 4
  br label %153

87:                                               ; preds = %2
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @vlc_playlist_Lock(i32* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @vlc_playlist_GetCurrentIndex(i32* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @vlc_playlist_Unlock(i32* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  store i32 1, i32* %3, align 4
  br label %153

98:                                               ; preds = %2, %2, %2, %2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @vlc_playlist_Lock(i32* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @vlc_playlist_RemoveOne(i32* %107, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = icmp sge i32 %114, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %104
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %120, %104
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @vlc_playlist_Unlock(i32* %130)
  br label %132

132:                                              ; preds = %127, %98
  store i32 1, i32* %3, align 4
  br label %153

133:                                              ; preds = %2, %2, %2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @vlc_playlist_Lock(i32* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @vlc_playlist_PlayAt(i32* %142, i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @vlc_playlist_Unlock(i32* %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %139, %133
  store i32 1, i32* %3, align 4
  br label %153

152:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %151, %132, %87, %84, %74, %58, %30
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackOrder(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @vlc_playlist_GetPlaybackRepeat(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackRepeat(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Sort(i32*, %struct.vlc_playlist_sort_criterion*, i32) #1

declare dso_local i32 @SearchPlaylist(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i32 @vlc_playlist_RemoveOne(i32*, i32) #1

declare dso_local i32 @vlc_playlist_PlayAt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
