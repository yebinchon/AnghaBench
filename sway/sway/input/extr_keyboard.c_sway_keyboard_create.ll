; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_sway_keyboard_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sway_keyboard = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.sway_seat_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_seat_device = type { %struct.sway_keyboard* }

@.str = private unnamed_addr constant [33 x i8] c"could not allocate sway keyboard\00", align 1
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@handle_keyboard_repeat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_keyboard* @sway_keyboard_create(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_keyboard*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  %6 = alloca %struct.sway_keyboard*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %5, align 8
  %7 = call %struct.sway_keyboard* @calloc(i32 1, i32 24)
  store %struct.sway_keyboard* %7, %struct.sway_keyboard** %6, align 8
  %8 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %9 = call i32 @sway_assert(%struct.sway_keyboard* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sway_keyboard* null, %struct.sway_keyboard** %3, align 8
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %14 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %15 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %14, i32 0, i32 3
  store %struct.sway_seat_device* %13, %struct.sway_seat_device** %15, align 8
  %16 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %17 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %18 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %17, i32 0, i32 0
  store %struct.sway_keyboard* %16, %struct.sway_keyboard** %18, align 8
  %19 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %20 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @wl_list_init(i32* %21)
  %23 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %24 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @wl_list_init(i32* %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %28 = load i32, i32* @handle_keyboard_repeat, align 4
  %29 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %30 = call i32 @wl_event_loop_add_timer(i32 %27, i32 %28, %struct.sway_keyboard* %29)
  %31 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  %32 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sway_keyboard*, %struct.sway_keyboard** %6, align 8
  store %struct.sway_keyboard* %33, %struct.sway_keyboard** %3, align 8
  br label %34

34:                                               ; preds = %12, %11
  %35 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  ret %struct.sway_keyboard* %35
}

declare dso_local %struct.sway_keyboard* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_keyboard*, i8*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @wl_event_loop_add_timer(i32, i32, %struct.sway_keyboard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
