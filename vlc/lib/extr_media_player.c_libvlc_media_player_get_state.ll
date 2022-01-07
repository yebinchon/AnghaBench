; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_state.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_libvlc_media_player_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@VLC_PLAYER_ERROR_NONE = common dso_local global i32 0, align 4
@libvlc_Error = common dso_local global i32 0, align 4
@libvlc_Stopped = common dso_local global i32 0, align 4
@libvlc_Ended = common dso_local global i32 0, align 4
@libvlc_Opening = common dso_local global i32 0, align 4
@libvlc_Playing = common dso_local global i32 0, align 4
@libvlc_Paused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_player_get_state(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @vlc_player_Lock(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @vlc_player_GetError(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @vlc_player_GetState(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @vlc_player_Unlock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VLC_PLAYER_ERROR_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @libvlc_Error, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %27
    i32 130, label %29
    i32 131, label %31
    i32 132, label %33
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @libvlc_Stopped, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @libvlc_Ended, align 4
  store i32 %28, i32* %2, align 4
  br label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @libvlc_Opening, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @libvlc_Playing, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @libvlc_Paused, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %23
  %36 = call i32 (...) @vlc_assert_unreachable()
  br label %37

37:                                               ; preds = %21, %25, %27, %29, %31, %33, %35
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vlc_player_Lock(i32*) #1

declare dso_local i32 @vlc_player_GetError(i32*) #1

declare dso_local i32 @vlc_player_GetState(i32*) #1

declare dso_local i32 @vlc_player_Unlock(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
