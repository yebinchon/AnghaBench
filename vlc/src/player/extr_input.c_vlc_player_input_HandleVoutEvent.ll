; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleVoutEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleVoutEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32* }
%struct.vlc_input_event_vout = type { i32, i32*, i32*, i32 }
%struct.vlc_player_track_priv = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VIDEO_ES = common dso_local global i64 0, align 8
@on_vout_changed = common dso_local global i32 0, align 4
@VLC_PLAYER_VOUT_STARTED = common dso_local global i32 0, align 4
@VLC_PLAYER_VOUT_STOPPED = common dso_local global i32 0, align 4
@VLC_VOUT_ORDER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, %struct.vlc_input_event_vout*)* @vlc_player_input_HandleVoutEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleVoutEvent(%struct.vlc_player_input* %0, %struct.vlc_input_event_vout* %1) #0 {
  %3 = alloca %struct.vlc_player_input*, align 8
  %4 = alloca %struct.vlc_input_event_vout*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_track_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %3, align 8
  store %struct.vlc_input_event_vout* %1, %struct.vlc_input_event_vout** %4, align 8
  %8 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %9 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %13 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %17 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.vlc_player_input*, %struct.vlc_player_input** %3, align 8
  %20 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %21 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input* %19, i32* %22, i32* null)
  store %struct.vlc_player_track_priv* %23, %struct.vlc_player_track_priv** %6, align 8
  %24 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %6, align 8
  %25 = icmp ne %struct.vlc_player_track_priv* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %92

27:                                               ; preds = %2
  %28 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VIDEO_ES, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %37 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %90 [
    i32 129, label %39
    i32 128, label %67
  ]

39:                                               ; preds = %27
  %40 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %41 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %6, align 8
  %44 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @on_vout_changed, align 4
  %47 = load i32, i32* @VLC_PLAYER_VOUT_STARTED, align 4
  %48 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %49 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %52 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %55 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vlc_player_SendEvent(i32* %45, i32 %46, i32 %47, i32* %50, i32 %53, i32* %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %39
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %63 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @vlc_player_vout_AddCallbacks(i32* %61, i32* %64)
  br label %66

66:                                               ; preds = %60, %39
  br label %92

67:                                               ; preds = %27
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %73 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @vlc_player_vout_DelCallbacks(i32* %71, i32* %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %6, align 8
  %78 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* @on_vout_changed, align 4
  %81 = load i32, i32* @VLC_PLAYER_VOUT_STOPPED, align 4
  %82 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %83 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @VLC_VOUT_ORDER_NONE, align 4
  %86 = load %struct.vlc_input_event_vout*, %struct.vlc_input_event_vout** %4, align 8
  %87 = getelementptr inbounds %struct.vlc_input_event_vout, %struct.vlc_input_event_vout* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @vlc_player_SendEvent(i32* %79, i32 %80, i32 %81, i32* %84, i32 %85, i32* %88)
  br label %92

90:                                               ; preds = %27
  %91 = call i32 (...) @vlc_assert_unreachable()
  br label %92

92:                                               ; preds = %26, %90, %76, %66
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input*, i32*, i32*) #1

declare dso_local i32 @vlc_player_SendEvent(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @vlc_player_vout_AddCallbacks(i32*, i32*) #1

declare dso_local i32 @vlc_player_vout_DelCallbacks(i32*, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
