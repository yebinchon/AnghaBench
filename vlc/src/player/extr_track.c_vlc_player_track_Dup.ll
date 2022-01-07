; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_Dup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_Dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i32, i32, i32, i32 }
%struct.vlc_player_track_priv = type { %struct.vlc_player_track }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_track* @vlc_player_track_Dup(%struct.vlc_player_track* %0) #0 {
  %2 = alloca %struct.vlc_player_track*, align 8
  %3 = alloca %struct.vlc_player_track*, align 8
  %4 = alloca %struct.vlc_player_track_priv*, align 8
  store %struct.vlc_player_track* %0, %struct.vlc_player_track** %3, align 8
  %5 = load %struct.vlc_player_track*, %struct.vlc_player_track** %3, align 8
  %6 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vlc_player_track*, %struct.vlc_player_track** %3, align 8
  %9 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vlc_player_track*, %struct.vlc_player_track** %3, align 8
  %12 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %11, i32 0, i32 1
  %13 = call %struct.vlc_player_track_priv* @vlc_player_track_priv_New(i32 %7, i32 %10, i32* %12)
  store %struct.vlc_player_track_priv* %13, %struct.vlc_player_track_priv** %4, align 8
  %14 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %4, align 8
  %15 = icmp ne %struct.vlc_player_track_priv* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.vlc_player_track* null, %struct.vlc_player_track** %2, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.vlc_player_track*, %struct.vlc_player_track** %3, align 8
  %19 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %4, align 8
  %22 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %4, align 8
  %25 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %24, i32 0, i32 0
  store %struct.vlc_player_track* %25, %struct.vlc_player_track** %2, align 8
  br label %26

26:                                               ; preds = %17, %16
  %27 = load %struct.vlc_player_track*, %struct.vlc_player_track** %2, align 8
  ret %struct.vlc_player_track* %27
}

declare dso_local %struct.vlc_player_track_priv* @vlc_player_track_priv_New(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
