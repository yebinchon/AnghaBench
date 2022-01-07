; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_keyboard.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_configure_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_seat_device = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sway_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.sway_seat_device*)* @seat_configure_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_configure_keyboard(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_seat_device*, align 8
  %5 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %4, align 8
  %6 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %7 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %12 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %13 = call i32 @sway_keyboard_create(%struct.sway_seat* %11, %struct.sway_seat_device* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %16 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sway_keyboard_configure(i32 %17)
  %19 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %20 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_seat_device*, %struct.sway_seat_device** %4, align 8
  %23 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wlr_seat_set_keyboard(i32 %21, i32 %26)
  %28 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %29 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %28)
  store %struct.sway_node* %29, %struct.sway_node** %5, align 8
  %30 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %31 = icmp ne %struct.sway_node* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %14
  %33 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %34 = call i64 @node_is_view(%struct.sway_node* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %38 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wlr_seat_keyboard_clear_focus(i32 %39)
  %41 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %42 = load %struct.sway_node*, %struct.sway_node** %5, align 8
  %43 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @seat_keyboard_notify_enter(%struct.sway_seat* %41, i32 %48)
  br label %50

50:                                               ; preds = %36, %32, %14
  ret void
}

declare dso_local i32 @sway_keyboard_create(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @sway_keyboard_configure(i32) #1

declare dso_local i32 @wlr_seat_set_keyboard(i32, i32) #1

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i32 @wlr_seat_keyboard_clear_focus(i32) #1

declare dso_local i32 @seat_keyboard_notify_enter(%struct.sway_seat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
