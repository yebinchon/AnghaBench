; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_FindTrack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_FindTrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_player_track* (i32*, i32, i32)* @FindTrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_player_track* @FindTrack(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlc_player_track*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlc_player_track*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @vlc_player_GetTrackCount(i32* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.vlc_player_track* @vlc_player_GetTrackAt(i32* %19, i32 %20, i64 %21)
  store %struct.vlc_player_track* %22, %struct.vlc_player_track** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.vlc_player_track*, %struct.vlc_player_track** %10, align 8
  %25 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vlc_es_id_GetInputId(i32 %26)
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load %struct.vlc_player_track*, %struct.vlc_player_track** %10, align 8
  store %struct.vlc_player_track* %30, %struct.vlc_player_track** %4, align 8
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %14

35:                                               ; preds = %14
  store %struct.vlc_player_track* null, %struct.vlc_player_track** %4, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.vlc_player_track*, %struct.vlc_player_track** %4, align 8
  ret %struct.vlc_player_track* %37
}

declare dso_local i64 @vlc_player_GetTrackCount(i32*, i32) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetTrackAt(i32*, i32, i64) #1

declare dso_local i32 @vlc_es_id_GetInputId(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
