; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_NotifyCurrentState.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_NotifyCurrentState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@on_items_reset = common dso_local global i32 0, align 4
@on_playback_repeat_changed = common dso_local global i32 0, align 4
@on_playback_order_changed = common dso_local global i32 0, align 4
@on_current_index_changed = common dso_local global i32 0, align 4
@on_has_prev_changed = common dso_local global i32 0, align 4
@on_has_next_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @vlc_playlist_NotifyCurrentState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_NotifyCurrentState(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @on_items_reset, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %5, i32* %6, i32 %7, i32 %11, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @on_playback_repeat_changed, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %17, i32* %18, i32 %19, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @on_playback_order_changed, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %24, i32* %25, i32 %26, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @on_current_index_changed, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %31, i32* %32, i32 %33, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @on_has_prev_changed, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %38, i32* %39, i32 %40, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @on_has_next_changed, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.TYPE_6__*, i32*, i32, i32, ...) @vlc_playlist_NotifyListener(%struct.TYPE_6__* %45, i32* %46, i32 %47, i32 %50)
  ret void
}

declare dso_local i32 @vlc_playlist_NotifyListener(%struct.TYPE_6__*, i32*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
