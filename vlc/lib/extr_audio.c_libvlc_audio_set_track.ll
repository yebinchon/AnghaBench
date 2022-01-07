; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_set_track.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_audio.c_libvlc_audio_set_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.vlc_player_track = type { i32 }

@VLC_PLAYER_SELECT_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Track identifier not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_audio_set_track(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vlc_player_track*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @vlc_player_Lock(i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @vlc_player_GetAudioTrackCount(i32* %15)
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call %struct.vlc_player_track* @vlc_player_GetAudioTrackAt(i32* %22, i64 %23)
  store %struct.vlc_player_track* %24, %struct.vlc_player_track** %9, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.vlc_player_track*, %struct.vlc_player_track** %9, align 8
  %27 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vlc_es_id_GetInputId(i32 %28)
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.vlc_player_track*, %struct.vlc_player_track** %9, align 8
  %34 = load i32, i32* @VLC_PLAYER_SELECT_EXCLUSIVE, align 4
  %35 = call i32 @vlc_player_SelectTrack(i32* %32, %struct.vlc_player_track* %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %42

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %17

40:                                               ; preds = %17
  %41 = call i32 @libvlc_printerr(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @vlc_player_Unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i64 @vlc_player_GetAudioTrackCount(i32*) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetAudioTrackAt(i32*, i64) #1

declare dso_local i32 @vlc_es_id_GetInputId(i32) #1

declare dso_local i32 @vlc_player_SelectTrack(i32*, %struct.vlc_player_track*, i32) #1

declare dso_local i32 @libvlc_printerr(i8*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
