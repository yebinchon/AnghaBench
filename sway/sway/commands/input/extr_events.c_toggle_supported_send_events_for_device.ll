; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_toggle_supported_send_events_for_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_toggle_supported_send_events_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { i32 }
%struct.sway_input_device = type { %struct.wlr_input_device* }
%struct.wlr_input_device = type { i32 }
%struct.libinput_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_config*, %struct.sway_input_device*)* @toggle_supported_send_events_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_supported_send_events_for_device(%struct.input_config* %0, %struct.sway_input_device* %1) #0 {
  %3 = alloca %struct.input_config*, align 8
  %4 = alloca %struct.sway_input_device*, align 8
  %5 = alloca %struct.wlr_input_device*, align 8
  %6 = alloca %struct.libinput_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.input_config* %0, %struct.input_config** %3, align 8
  store %struct.sway_input_device* %1, %struct.sway_input_device** %4, align 8
  %9 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %10 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %9, i32 0, i32 0
  %11 = load %struct.wlr_input_device*, %struct.wlr_input_device** %10, align 8
  store %struct.wlr_input_device* %11, %struct.wlr_input_device** %5, align 8
  %12 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %13 = call i32 @wlr_input_device_is_libinput(%struct.wlr_input_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %18 = call %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.wlr_input_device* %17)
  store %struct.libinput_device* %18, %struct.libinput_device** %6, align 8
  %19 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %20 = call i32 @libinput_device_config_send_events_get_mode(%struct.libinput_device* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %22 = call i32 @libinput_device_config_send_events_get_modes(%struct.libinput_device* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %39 [
    i32 128, label %24
    i32 129, label %31
    i32 130, label %38
  ]

24:                                               ; preds = %16
  store i32 129, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %40

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %16, %30
  store i32 130, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %16, %37
  br label %39

39:                                               ; preds = %16, %38
  store i32 128, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %36, %29
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.input_config*, %struct.input_config** %3, align 8
  %43 = getelementptr inbounds %struct.input_config, %struct.input_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %15
  ret void
}

declare dso_local i32 @wlr_input_device_is_libinput(%struct.wlr_input_device*) #1

declare dso_local %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.wlr_input_device*) #1

declare dso_local i32 @libinput_device_config_send_events_get_mode(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_send_events_get_modes(%struct.libinput_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
