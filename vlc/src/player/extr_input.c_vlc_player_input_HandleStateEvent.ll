; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleStateEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_input.c_vlc_player_input_HandleStateEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32, i32, i32 }

@VLC_PLAYER_STATE_STARTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_PLAYING = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_PAUSED = common dso_local global i32 0, align 4
@VLC_PLAYER_STATE_STOPPING = common dso_local global i32 0, align 4
@VLC_PLAYER_ERROR_GENERIC = common dso_local global i32 0, align 4
@on_error_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_player_input*, i32, i32)* @vlc_player_input_HandleStateEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_player_input_HandleStateEvent(%struct.vlc_player_input* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vlc_player_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vlc_player_input* %0, %struct.vlc_player_input** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %51 [
    i32 130, label %8
    i32 128, label %13
    i32 129, label %18
    i32 132, label %23
    i32 131, label %33
  ]

8:                                                ; preds = %3
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %10 = load i32, i32* @VLC_PLAYER_STATE_STARTED, align 4
  %11 = load i32, i32* @VLC_TICK_INVALID, align 4
  %12 = call i32 @vlc_player_input_HandleState(%struct.vlc_player_input* %9, i32 %10, i32 %11)
  br label %53

13:                                               ; preds = %3
  %14 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %15 = load i32, i32* @VLC_PLAYER_STATE_PLAYING, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @vlc_player_input_HandleState(%struct.vlc_player_input* %14, i32 %15, i32 %16)
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %20 = load i32, i32* @VLC_PLAYER_STATE_PAUSED, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @vlc_player_input_HandleState(%struct.vlc_player_input* %19, i32 %20, i32 %21)
  br label %53

23:                                               ; preds = %3
  %24 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %25 = load i32, i32* @VLC_PLAYER_STATE_STOPPING, align 4
  %26 = load i32, i32* @VLC_TICK_INVALID, align 4
  %27 = call i32 @vlc_player_input_HandleState(%struct.vlc_player_input* %24, i32 %25, i32 %26)
  %28 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %29 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %32 = call i32 @vlc_player_destructor_AddStoppingInput(i32 %30, %struct.vlc_player_input* %31)
  br label %53

33:                                               ; preds = %3
  %34 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %35 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @VLC_PLAYER_ERROR_GENERIC, align 4
  %40 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %41 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %43 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @on_error_changed, align 4
  %46 = load %struct.vlc_player_input*, %struct.vlc_player_input** %4, align 8
  %47 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vlc_player_SendEvent(i32 %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %38, %33
  br label %53

51:                                               ; preds = %3
  %52 = call i32 (...) @vlc_assert_unreachable()
  br label %53

53:                                               ; preds = %51, %50, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @vlc_player_input_HandleState(%struct.vlc_player_input*, i32, i32) #1

declare dso_local i32 @vlc_player_destructor_AddStoppingInput(i32, %struct.vlc_player_input*) #1

declare dso_local i32 @vlc_player_SendEvent(i32, i32, i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
