; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_player.c_player_on_current_media_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_player.c_player_on_current_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32* }
%struct.vlc_playlist_state = type { i32 }

@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @player_on_current_media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_current_media_changed(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.vlc_playlist_state, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @VLC_UNUSED(i32* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %26, i64 %30
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %22
  %37 = phi i32* [ %34, %22 ], [ null, %35 ]
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %89

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %72

45:                                               ; preds = %42
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @vlc_playlist_IndexOfMedia(%struct.TYPE_12__* %46, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %55, i64 %57
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %10, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = call i32 @randomizer_Select(i32* %67, %struct.TYPE_13__* %68)
  br label %70

70:                                               ; preds = %65, %51
  br label %71

71:                                               ; preds = %70, %45
  br label %73

72:                                               ; preds = %42
  store i32 -1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = call i32 @vlc_playlist_state_Save(%struct.TYPE_12__* %74, %struct.vlc_playlist_state* %11)
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__* %87, %struct.vlc_playlist_state* %11)
  br label %89

89:                                               ; preds = %73, %41
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_IndexOfMedia(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @randomizer_Select(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
