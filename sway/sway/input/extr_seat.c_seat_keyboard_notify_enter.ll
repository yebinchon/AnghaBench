; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_keyboard_notify_enter.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_keyboard_notify_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_keyboard = type { i32 }
%struct.sway_keyboard = type { %struct.sway_shortcut_state }
%struct.sway_shortcut_state = type { i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"Cannot find sway_keyboard for seat keyboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.wlr_surface*)* @seat_keyboard_notify_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_keyboard_notify_enter(%struct.sway_seat* %0, %struct.wlr_surface* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.wlr_surface*, align 8
  %5 = alloca %struct.wlr_keyboard*, align 8
  %6 = alloca %struct.sway_keyboard*, align 8
  %7 = alloca %struct.sway_shortcut_state*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %4, align 8
  %8 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %9 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32 %10)
  store %struct.wlr_keyboard* %11, %struct.wlr_keyboard** %5, align 8
  %12 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %5, align 8
  %13 = icmp ne %struct.wlr_keyboard* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %16 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %19 = call i32 @wlr_seat_keyboard_notify_enter(i32 %17, %struct.wlr_surface* %18, i32* null, i32 0, i32* null)
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %22 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %5, align 8
  %23 = call %struct.sway_keyboard* @sway_keyboard_for_wlr_keyboard(%struct.sway_seat* %21, %struct.wlr_keyboard* %22)
  store %struct.sway_keyboard* %23, %struct.sway_keyboard** %6, align 8
  %24 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %25 = icmp ne %struct.sway_keyboard* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i1 [ false, %20 ], [ true, %26 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %32 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %31, i32 0, i32 0
  store %struct.sway_shortcut_state* %32, %struct.sway_shortcut_state** %7, align 8
  %33 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %34 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %37 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %7, align 8
  %38 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.sway_shortcut_state*, %struct.sway_shortcut_state** %7, align 8
  %41 = getelementptr inbounds %struct.sway_shortcut_state, %struct.sway_shortcut_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %5, align 8
  %44 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %43, i32 0, i32 0
  %45 = call i32 @wlr_seat_keyboard_notify_enter(i32 %35, %struct.wlr_surface* %36, i32* %39, i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %27, %14
  ret void
}

declare dso_local %struct.wlr_keyboard* @wlr_seat_get_keyboard(i32) #1

declare dso_local i32 @wlr_seat_keyboard_notify_enter(i32, %struct.wlr_surface*, i32*, i32, i32*) #1

declare dso_local %struct.sway_keyboard* @sway_keyboard_for_wlr_keyboard(%struct.sway_seat*, %struct.wlr_keyboard*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
