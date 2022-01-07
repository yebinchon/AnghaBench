; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetTrackAt.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetTrackAt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i32 }
%struct.vlc_player_input = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.vlc_player_track }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vlc_player_track*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlc_player_input*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %10)
  store %struct.vlc_player_input* %11, %struct.vlc_player_input** %8, align 8
  %12 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %13 = icmp ne %struct.vlc_player_input* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.vlc_player_track* null, %struct.vlc_player_track** %4, align 8
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.vlc_player_input*, %struct.vlc_player_input** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_5__* @vlc_player_input_GetTrackVector(%struct.vlc_player_input* %16, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.vlc_player_track* null, %struct.vlc_player_track** %4, align 8
  br label %37

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store %struct.vlc_player_track* %36, %struct.vlc_player_track** %4, align 8
  br label %37

37:                                               ; preds = %22, %21, %14
  %38 = load %struct.vlc_player_track*, %struct.vlc_player_track** %4, align 8
  ret %struct.vlc_player_track* %38
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local %struct.TYPE_5__* @vlc_player_input_GetTrackVector(%struct.vlc_player_input*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
