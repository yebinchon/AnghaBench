; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_get_spu.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_get_spu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.vlc_player_track = type { i32 }

@SPU_ES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_video_get_spu(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vlc_player_track*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @vlc_player_Lock(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @SPU_ES, align 4
  %13 = call %struct.vlc_player_track* @vlc_player_GetSelectedTrack(i32* %11, i32 %12)
  store %struct.vlc_player_track* %13, %struct.vlc_player_track** %4, align 8
  %14 = load %struct.vlc_player_track*, %struct.vlc_player_track** %4, align 8
  %15 = icmp ne %struct.vlc_player_track* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.vlc_player_track*, %struct.vlc_player_track** %4, align 8
  %18 = getelementptr inbounds %struct.vlc_player_track, %struct.vlc_player_track* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vlc_es_id_GetInputId(i32 %19)
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ -1, %21 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @vlc_player_Unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local %struct.vlc_player_track* @vlc_player_GetSelectedTrack(i32*, i32) #1

declare dso_local i32 @vlc_es_id_GetInputId(i32) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
