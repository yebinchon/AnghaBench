; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_Navigate.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_Navigate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_player_input = type { i32 }

@INPUT_CONTROL_NAV_ACTIVATE = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_UP = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_DOWN = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_LEFT = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_RIGHT = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_POPUP = common dso_local global i32 0, align 4
@INPUT_CONTROL_NAV_MENU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_Navigate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_player_input*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.vlc_player_input* @vlc_player_get_input_locked(i32* %7)
  store %struct.vlc_player_input* %8, %struct.vlc_player_input** %5, align 8
  %9 = load %struct.vlc_player_input*, %struct.vlc_player_input** %5, align 8
  %10 = icmp ne %struct.vlc_player_input* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %28 [
    i32 134, label %14
    i32 128, label %16
    i32 133, label %18
    i32 132, label %20
    i32 129, label %22
    i32 130, label %24
    i32 131, label %26
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @INPUT_CONTROL_NAV_ACTIVATE, align 4
  store i32 %15, i32* %6, align 4
  br label %30

16:                                               ; preds = %12
  %17 = load i32, i32* @INPUT_CONTROL_NAV_UP, align 4
  store i32 %17, i32* %6, align 4
  br label %30

18:                                               ; preds = %12
  %19 = load i32, i32* @INPUT_CONTROL_NAV_DOWN, align 4
  store i32 %19, i32* %6, align 4
  br label %30

20:                                               ; preds = %12
  %21 = load i32, i32* @INPUT_CONTROL_NAV_LEFT, align 4
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load i32, i32* @INPUT_CONTROL_NAV_RIGHT, align 4
  store i32 %23, i32* %6, align 4
  br label %30

24:                                               ; preds = %12
  %25 = load i32, i32* @INPUT_CONTROL_NAV_POPUP, align 4
  store i32 %25, i32* %6, align 4
  br label %30

26:                                               ; preds = %12
  %27 = load i32, i32* @INPUT_CONTROL_NAV_MENU, align 4
  store i32 %27, i32* %6, align 4
  br label %30

28:                                               ; preds = %12
  %29 = call i32 (...) @vlc_assert_unreachable()
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20, %18, %16, %14
  %31 = load %struct.vlc_player_input*, %struct.vlc_player_input** %5, align 8
  %32 = getelementptr inbounds %struct.vlc_player_input, %struct.vlc_player_input* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @input_ControlPushHelper(i32 %33, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %30, %11
  ret void
}

declare dso_local %struct.vlc_player_input* @vlc_player_get_input_locked(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @input_ControlPushHelper(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
