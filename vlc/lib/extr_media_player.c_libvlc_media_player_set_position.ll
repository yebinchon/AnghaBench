; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_set_position.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_set_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@VLC_PLAYER_SEEK_FAST = common dso_local global i32 0, align 4
@VLC_PLAYER_SEEK_PRECISE = common dso_local global i32 0, align 4
@VLC_PLAYER_WHENCE_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_player_set_position(%struct.TYPE_3__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @vlc_player_Lock(i32* %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VLC_PLAYER_SEEK_FAST, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @VLC_PLAYER_SEEK_PRECISE, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load float, float* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VLC_PLAYER_WHENCE_ABSOLUTE, align 4
  %26 = call i32 @vlc_player_SeekByPos(i32* %22, float %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @vlc_player_Unlock(i32* %27)
  ret i32 0
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @vlc_player_SeekByPos(i32*, float, i32, i32) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
