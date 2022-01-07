; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemReplaced.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_content.c_vlc_playlist_ItemReplaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32 }
%struct.vlc_playlist_state = type { i32 }

@on_items_updated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64)* @vlc_playlist_ItemReplaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_ItemReplaced(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vlc_playlist_state, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call i32 @vlc_playlist_state_Save(%struct.TYPE_12__* %6, %struct.vlc_playlist_state* %5)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = call i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__* %8)
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load i32, i32* @on_items_updated, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %23
  %25 = call i32 @vlc_playlist_Notify(%struct.TYPE_12__* %16, i32 %17, i64 %18, %struct.TYPE_13__** %24, i32 1)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__* %26, %struct.vlc_playlist_state* %5)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %32, i64 %33
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @vlc_playlist_AutoPreparse(%struct.TYPE_12__* %28, i32 %37)
  ret void
}

declare dso_local i32 @vlc_playlist_state_Save(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_ComputeHasPrev(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_ComputeHasNext(%struct.TYPE_12__*) #1

declare dso_local i32 @vlc_playlist_Notify(%struct.TYPE_12__*, i32, i64, %struct.TYPE_13__**, i32) #1

declare dso_local i32 @vlc_playlist_state_NotifyChanges(%struct.TYPE_12__*, %struct.vlc_playlist_state*) #1

declare dso_local i32 @vlc_playlist_AutoPreparse(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
