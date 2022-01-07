; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_switch.c_sway_switch_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_switch.c_sway_switch_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_switch = type { %struct.TYPE_2__, i32, %struct.sway_seat_device* }
%struct.TYPE_2__ = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_seat_device = type { %struct.sway_switch* }

@.str = private unnamed_addr constant [26 x i8] c"could not allocate switch\00", align 1
@WLR_SWITCH_STATE_OFF = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Allocated switch for device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_switch* @sway_switch_create(%struct.sway_seat* %0, %struct.sway_seat_device* %1) #0 {
  %3 = alloca %struct.sway_switch*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  %5 = alloca %struct.sway_seat_device*, align 8
  %6 = alloca %struct.sway_switch*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %4, align 8
  store %struct.sway_seat_device* %1, %struct.sway_seat_device** %5, align 8
  %7 = call %struct.sway_switch* @calloc(i32 1, i32 16)
  store %struct.sway_switch* %7, %struct.sway_switch** %6, align 8
  %8 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  %9 = call i32 @sway_assert(%struct.sway_switch* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sway_switch* null, %struct.sway_switch** %3, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  %14 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %15 = getelementptr inbounds %struct.sway_seat_device, %struct.sway_seat_device* %14, i32 0, i32 0
  store %struct.sway_switch* %13, %struct.sway_switch** %15, align 8
  %16 = load %struct.sway_seat_device*, %struct.sway_seat_device** %5, align 8
  %17 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  %18 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %17, i32 0, i32 2
  store %struct.sway_seat_device* %16, %struct.sway_seat_device** %18, align 8
  %19 = load i32, i32* @WLR_SWITCH_STATE_OFF, align 4
  %20 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  %21 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  %23 = getelementptr inbounds %struct.sway_switch, %struct.sway_switch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @wl_list_init(i32* %24)
  %26 = load i32, i32* @SWAY_DEBUG, align 4
  %27 = call i32 @sway_log(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sway_switch*, %struct.sway_switch** %6, align 8
  store %struct.sway_switch* %28, %struct.sway_switch** %3, align 8
  br label %29

29:                                               ; preds = %12, %11
  %30 = load %struct.sway_switch*, %struct.sway_switch** %3, align 8
  ret %struct.sway_switch* %30
}

declare dso_local %struct.sway_switch* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_switch*, i8*) #1

declare dso_local i32 @wl_list_init(i32*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
