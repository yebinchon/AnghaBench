; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetEsIdFromVout.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetEsIdFromVout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.vlc_player_track_priv** }
%struct.vlc_player_track_priv = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32* }

@vlc_player_GetEsIdFromVout.cats = internal constant [3 x i32] [i32 128, i32 129, i32 130], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_player_GetEsIdFromVout(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vlc_player_input*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vlc_player_track_priv*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %12)
  store %struct.vlc_player_input* %13, %struct.vlc_player_input** %6, align 8
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %15 = icmp ne %struct.vlc_player_input* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %61

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %57, %17
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @vlc_player_GetEsIdFromVout.cats, i64 0, i64 0))
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* @vlc_player_GetEsIdFromVout.cats, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.vlc_player_input*, %struct.vlc_player_input** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_5__* @vlc_player_input_GetTrackVector(%struct.vlc_player_input* %26, i32 %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %53, %22
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.vlc_player_track_priv**, %struct.vlc_player_track_priv*** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %38, i64 %39
  %41 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %40, align 8
  store %struct.vlc_player_track_priv* %41, %struct.vlc_player_track_priv** %11, align 8
  %42 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %11, align 8
  %43 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %11, align 8
  %49 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %3, align 8
  br label %61

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %29

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %7, align 8
  br label %18

60:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %61

61:                                               ; preds = %60, %47, %16
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_5__* @vlc_player_input_GetTrackVector(%struct.vlc_player_input*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
