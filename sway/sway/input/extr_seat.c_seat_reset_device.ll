; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_reset_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_input_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_seat_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TODO: reset tablet pad\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TODO: reset switch device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_reset_device(%struct.sway_seat* %0, %struct.sway_input_device* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_input_device*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_input_device* %1, %struct.sway_input_device** %4, align 8
  %6 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %7 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %8 = call %struct.sway_seat_device* @seat_get_device(%struct.sway_seat* %6, %struct.sway_input_device* %7)
  store %struct.sway_seat_device* %8, %struct.sway_seat_device** %5, align 8
  %9 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %10 = icmp ne %struct.sway_seat_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %14 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %45 [
    i32 132, label %18
    i32 133, label %22
    i32 128, label %31
    i32 129, label %35
    i32 130, label %39
    i32 131, label %42
  ]

18:                                               ; preds = %12
  %19 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %20 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %21 = call i32 @seat_reset_input_config(%struct.sway_seat* %19, %struct.sway_seat_device* %20)
  br label %45

22:                                               ; preds = %12
  %23 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %24 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sway_keyboard_disarm_key_repeat(i32 %25)
  %27 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %28 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sway_keyboard_configure(i32 %29)
  br label %45

31:                                               ; preds = %12
  %32 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %33 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %34 = call i32 @seat_reset_input_config(%struct.sway_seat* %32, %struct.sway_seat_device* %33)
  br label %45

35:                                               ; preds = %12
  %36 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %37 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %38 = call i32 @seat_reset_input_config(%struct.sway_seat* %36, %struct.sway_seat_device* %37)
  br label %45

39:                                               ; preds = %12
  %40 = load i32, i32* @SWAY_DEBUG, align 4
  %41 = call i32 @sway_log(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

42:                                               ; preds = %12
  %43 = load i32, i32* @SWAY_DEBUG, align 4
  %44 = call i32 @sway_log(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %11, %12, %42, %39, %35, %31, %22, %18
  ret void
}

declare dso_local %struct.sway_seat_device* @seat_get_device(%struct.sway_seat*, %struct.sway_input_device*) #1

declare dso_local i32 @seat_reset_input_config(%struct.sway_seat*, %struct.sway_seat_device*) #1

declare dso_local i32 @sway_keyboard_disarm_key_repeat(i32) #1

declare dso_local i32 @sway_keyboard_configure(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
