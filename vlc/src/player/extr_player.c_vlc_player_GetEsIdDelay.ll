; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetEsIdDelay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetEsIdDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }
%struct.vlc_player_track_priv = type { i32 }

@INT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_player_GetEsIdDelay(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_input*, align 8
  %7 = alloca %struct.vlc_player_track_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %8)
  store %struct.vlc_player_input* %9, %struct.vlc_player_input** %6, align 8
  %10 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %11 = icmp ne %struct.vlc_player_input* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input* %14, i32* %15, i32* null)
  store %struct.vlc_player_track_priv* %16, %struct.vlc_player_track_priv** %7, align 8
  %17 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %18 = icmp ne %struct.vlc_player_track_priv* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %7, align 8
  %21 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %25

23:                                               ; preds = %13
  %24 = load i32, i32* @INT64_MAX, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %22, %19 ], [ %24, %23 ]
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local %struct.vlc_player_track_priv* @vlc_player_input_FindTrackById(%struct.vlc_player_input*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
