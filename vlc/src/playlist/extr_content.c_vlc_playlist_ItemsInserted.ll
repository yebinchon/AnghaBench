; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsInserted.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemsInserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.vlc_playlist_state = type { i32 }

@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i64 0, align 8
@on_items_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64, i64)* @vlc_playlist_ItemsInserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_ItemsInserted(%struct.TYPE_14__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_playlist_state, align 4
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %22, i64 %23
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @randomizer_Add(i32* %18, %struct.TYPE_15__** %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = call i32 @vlc_playlist_state_Save(%struct.TYPE_14__* %28, %struct.vlc_playlist_state* %7)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %35, %27
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %53, i64 %54
  store %struct.TYPE_15__** %55, %struct.TYPE_15__*** %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = load i32, i32* @on_items_added, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @vlc_playlist_Notify(%struct.TYPE_14__* %56, i32 %57, i64 %58, %struct.TYPE_15__** %59, i64 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_14__* %62, %struct.vlc_playlist_state* %7)
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %84, %41
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %67, %68
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %75, i64 %76
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %10, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vlc_playlist_AutoPreparse(%struct.TYPE_14__* %79, i32 %82)
  br label %84

84:                                               ; preds = %71
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %65

87:                                               ; preds = %65
  ret void
}

declare dso_local i32 @randomizer_Add(i32*, %struct.TYPE_15__**, i64) #1

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_14__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_14__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_14__*, i32, i64, %struct.TYPE_15__**, i64) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_14__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_AutoPreparse(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
