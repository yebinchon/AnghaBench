; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_modifiers.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_keyboard = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.wlr_seat* }
%struct.wlr_seat = type { i32 }
%struct.wl_listener = type { i32 }

@keyboard_modifiers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xkb_layout\00", align 1
@keyboard = common dso_local global %struct.sway_keyboard* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_keyboard_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_keyboard_modifiers(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_keyboard*, align 8
  %6 = alloca %struct.wlr_seat*, align 8
  %7 = alloca %struct.wlr_input_device*, align 8
  %8 = alloca i32, align 4
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %10 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %11 = ptrtoint %struct.sway_keyboard* %10 to i32
  %12 = load i32, i32* @keyboard_modifiers, align 4
  %13 = call %struct.sway_keyboard* @wl_container_of(%struct.wl_listener* %9, i32 %11, i32 %12)
  store %struct.sway_keyboard* %13, %struct.sway_keyboard** %5, align 8
  %14 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %15 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.wlr_seat*, %struct.wlr_seat** %19, align 8
  store %struct.wlr_seat* %20, %struct.wlr_seat** %6, align 8
  %21 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %22 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.wlr_input_device*, %struct.wlr_input_device** %26, align 8
  store %struct.wlr_input_device* %27, %struct.wlr_input_device** %7, align 8
  %28 = load %struct.wlr_seat*, %struct.wlr_seat** %6, align 8
  %29 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %30 = call i32 @wlr_seat_set_keyboard(%struct.wlr_seat* %28, %struct.wlr_input_device* %29)
  %31 = load %struct.wlr_seat*, %struct.wlr_seat** %6, align 8
  %32 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %33 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @wlr_seat_keyboard_notify_modifiers(%struct.wlr_seat* %31, %struct.TYPE_8__* %35)
  %37 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %38 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = call i32 @wlr_keyboard_get_modifiers(%struct.TYPE_9__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @determine_bar_visibility(i32 %41)
  %43 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %44 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %50 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %2
  %54 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %55 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %61 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sway_keyboard*, %struct.sway_keyboard** %5, align 8
  %63 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = call i32 @ipc_event_input(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %66)
  br label %68

68:                                               ; preds = %53, %2
  ret void
}

declare dso_local %struct.sway_keyboard* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wlr_seat_set_keyboard(%struct.wlr_seat*, %struct.wlr_input_device*) #1

declare dso_local i32 @wlr_seat_keyboard_notify_modifiers(%struct.wlr_seat*, %struct.TYPE_8__*) #1

declare dso_local i32 @wlr_keyboard_get_modifiers(%struct.TYPE_9__*) #1

declare dso_local i32 @determine_bar_visibility(i32) #1

declare dso_local i32 @ipc_event_input(i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
