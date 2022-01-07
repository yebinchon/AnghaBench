; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_vector_FindById.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_track.c_vlc_player_track_vector_FindById.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_track_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i64, %struct.vlc_player_track_priv** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_player_track_priv* @vlc_player_track_vector_FindById(%struct.TYPE_5__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.vlc_player_track_priv*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_player_track_priv*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.vlc_player_track_priv**, %struct.vlc_player_track_priv*** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %19, i64 %20
  %22 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %21, align 8
  store %struct.vlc_player_track_priv* %22, %struct.vlc_player_track_priv** %9, align 8
  %23 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %9, align 8
  %24 = getelementptr inbounds %struct.vlc_player_track_priv, %struct.vlc_player_track_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %9, align 8
  store %struct.vlc_player_track_priv* %36, %struct.vlc_player_track_priv** %4, align 8
  br label %42

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %10

41:                                               ; preds = %10
  store %struct.vlc_player_track_priv* null, %struct.vlc_player_track_priv** %4, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.vlc_player_track_priv*, %struct.vlc_player_track_priv** %4, align 8
  ret %struct.vlc_player_track_priv* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
