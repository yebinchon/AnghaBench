; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_axis.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.wlr_event_pointer_axis = type { float, float, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sway_input_device* }
%struct.sway_input_device = type { i32 }
%struct.input_config = type { float }

@FLT_MIN = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, %struct.wlr_event_pointer_axis*)* @handle_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_axis(%struct.sway_seat* %0, %struct.wlr_event_pointer_axis* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.wlr_event_pointer_axis*, align 8
  %5 = alloca %struct.sway_input_device*, align 8
  %6 = alloca %struct.input_config*, align 8
  %7 = alloca float, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.wlr_event_pointer_axis* %1, %struct.wlr_event_pointer_axis** %4, align 8
  %8 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %9 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %14 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sway_input_device*, %struct.sway_input_device** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi %struct.sway_input_device* [ %17, %12 ], [ null, %18 ]
  store %struct.sway_input_device* %20, %struct.sway_input_device** %5, align 8
  %21 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %22 = icmp ne %struct.sway_input_device* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.sway_input_device*, %struct.sway_input_device** %5, align 8
  %25 = call %struct.input_config* @input_device_get_config(%struct.sway_input_device* %24)
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.input_config* [ %25, %23 ], [ null, %26 ]
  store %struct.input_config* %28, %struct.input_config** %6, align 8
  %29 = load %struct.input_config*, %struct.input_config** %6, align 8
  %30 = icmp eq %struct.input_config* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load %struct.input_config*, %struct.input_config** %6, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = load float, float* @FLT_MIN, align 4
  %36 = fcmp oeq float %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %27
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.input_config*, %struct.input_config** %6, align 8
  %40 = getelementptr inbounds %struct.input_config, %struct.input_config* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi float [ 1.000000e+00, %37 ], [ %41, %38 ]
  store float %43, float* %7, align 4
  %44 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %45 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %48 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %51 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load float, float* %7, align 4
  %54 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %55 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %54, i32 0, i32 0
  %56 = load float, float* %55, align 8
  %57 = fmul float %53, %56
  %58 = load float, float* %7, align 4
  %59 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %60 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %59, i32 0, i32 1
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  %63 = call i32 @round(float %62)
  %64 = load %struct.wlr_event_pointer_axis*, %struct.wlr_event_pointer_axis** %4, align 8
  %65 = getelementptr inbounds %struct.wlr_event_pointer_axis, %struct.wlr_event_pointer_axis* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wlr_seat_pointer_notify_axis(i32 %46, i32 %49, i32 %52, float %57, i32 %63, i32 %66)
  ret void
}

declare dso_local %struct.input_config* @input_device_get_config(%struct.sway_input_device*) #1

declare dso_local i32 @wlr_seat_pointer_notify_axis(i32, i32, i32, float, i32, i32) #1

declare dso_local i32 @round(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
