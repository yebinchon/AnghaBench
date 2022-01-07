; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_remove_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_input_device = type { i32 }
%struct.sway_seat_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"removing device %s from seat %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_remove_device(%struct.sway_seat* %0, %struct.sway_input_device* %1) #0 {
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
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @SWAY_DEBUG, align 4
  %14 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %15 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sway_log(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %24 = call i32 @seat_device_destroy(%struct.sway_seat_device* %23)
  %25 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %26 = call i32 @seat_update_capabilities(%struct.sway_seat* %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.sway_seat_device* @seat_get_device(%struct.sway_seat*, %struct.sway_input_device*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i32) #1

declare dso_local i32 @seat_device_destroy(%struct.sway_seat_device*) #1

declare dso_local i32 @seat_update_capabilities(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
