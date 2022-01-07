; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_update_shortcut_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_update_shortcut_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_shortcut_state = type { i64, i64 }
%struct.wlr_event_keyboard_key = type { i64, i64 }

@WLR_KEY_PRESSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_shortcut_state*, %struct.wlr_event_keyboard_key*, i64, i64)* @update_shortcut_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_shortcut_state(%struct.sway_shortcut_state* %0, %struct.wlr_event_keyboard_key* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_shortcut_state*, align 8
  %7 = alloca %struct.wlr_event_keyboard_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sway_shortcut_state* %0, %struct.sway_shortcut_state** %6, align 8
  store %struct.wlr_event_keyboard_key* %1, %struct.wlr_event_keyboard_key** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %13 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %19 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %24 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %29 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %30 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @state_erase_key(%struct.sway_shortcut_state* %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %22, %4
  %34 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %7, align 8
  %35 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WLR_KEY_PRESSED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %41 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %7, align 8
  %42 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @state_add_key(%struct.sway_shortcut_state* %40, i64 %43, i64 %44)
  %46 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %7, align 8
  %47 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %50 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %57

51:                                               ; preds = %33
  %52 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %6, align 8
  %53 = load %struct.wlr_event_keyboard_key*, %struct.wlr_event_keyboard_key** %7, align 8
  %54 = getelementptr inbounds %struct.wlr_event_keyboard_key, %struct.wlr_event_keyboard_key* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @state_erase_key(%struct.sway_shortcut_state* %52, i64 %55)
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @state_erase_key(%struct.sway_shortcut_state*, i64) #1

declare dso_local i32 @state_add_key(%struct.sway_shortcut_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
