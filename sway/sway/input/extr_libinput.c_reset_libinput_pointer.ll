; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_reset_libinput_pointer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_reset_libinput_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"reset_libinput_pointer(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, i8*)* @reset_libinput_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_libinput_pointer(%struct.libinput_device* %0, i8* %1) #0 {
  %3 = alloca %struct.libinput_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @SWAY_DEBUG, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @sway_log(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %7)
  store i32 0, i32* %5, align 4
  %9 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %10 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %11 = call i32 @libinput_device_config_send_events_get_default_mode(%struct.libinput_device* %10)
  %12 = call i32 @set_send_events(%struct.libinput_device* %9, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %16 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %17 = call i32 @libinput_device_config_tap_get_default_enabled(%struct.libinput_device* %16)
  %18 = call i32 @set_tap(%struct.libinput_device* %15, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %22 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %23 = call i32 @libinput_device_config_tap_get_default_button_map(%struct.libinput_device* %22)
  %24 = call i32 @set_tap_button_map(%struct.libinput_device* %21, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %28 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %29 = call i32 @libinput_device_config_tap_get_default_drag_enabled(%struct.libinput_device* %28)
  %30 = call i32 @set_tap_drag(%struct.libinput_device* %27, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %34 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %35 = call i32 @libinput_device_config_tap_get_default_drag_lock_enabled(%struct.libinput_device* %34)
  %36 = call i32 @set_tap_drag_lock(%struct.libinput_device* %33, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %40 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %41 = call i32 @libinput_device_config_accel_get_default_speed(%struct.libinput_device* %40)
  %42 = call i32 @set_accel_speed(%struct.libinput_device* %39, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %46 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %47 = call i32 @libinput_device_config_accel_get_default_profile(%struct.libinput_device* %46)
  %48 = call i32 @set_accel_profile(%struct.libinput_device* %45, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  %51 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %52 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %53 = call i32 @libinput_device_config_scroll_get_default_natural_scroll_enabled(%struct.libinput_device* %52)
  %54 = call i32 @set_natural_scroll(%struct.libinput_device* %51, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %58 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %59 = call i32 @libinput_device_config_left_handed_get_default(%struct.libinput_device* %58)
  %60 = call i32 @set_left_handed(%struct.libinput_device* %57, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %64 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %65 = call i32 @libinput_device_config_click_get_default_method(%struct.libinput_device* %64)
  %66 = call i32 @set_click_method(%struct.libinput_device* %63, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %70 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %71 = call i32 @libinput_device_config_middle_emulation_get_default_enabled(%struct.libinput_device* %70)
  %72 = call i32 @set_middle_emulation(%struct.libinput_device* %69, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %76 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %77 = call i32 @libinput_device_config_scroll_get_default_method(%struct.libinput_device* %76)
  %78 = call i32 @set_scroll_method(%struct.libinput_device* %75, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %82 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %83 = call i32 @libinput_device_config_scroll_get_default_button(%struct.libinput_device* %82)
  %84 = call i32 @set_scroll_button(%struct.libinput_device* %81, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %88 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %89 = call i32 @libinput_device_config_dwt_get_default_enabled(%struct.libinput_device* %88)
  %90 = call i32 @set_dwt(%struct.libinput_device* %87, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i32 @set_send_events(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_send_events_get_default_mode(%struct.libinput_device*) #1

declare dso_local i32 @set_tap(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_tap_get_default_enabled(%struct.libinput_device*) #1

declare dso_local i32 @set_tap_button_map(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_tap_get_default_button_map(%struct.libinput_device*) #1

declare dso_local i32 @set_tap_drag(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_tap_get_default_drag_enabled(%struct.libinput_device*) #1

declare dso_local i32 @set_tap_drag_lock(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_tap_get_default_drag_lock_enabled(%struct.libinput_device*) #1

declare dso_local i32 @set_accel_speed(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_accel_get_default_speed(%struct.libinput_device*) #1

declare dso_local i32 @set_accel_profile(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_accel_get_default_profile(%struct.libinput_device*) #1

declare dso_local i32 @set_natural_scroll(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_scroll_get_default_natural_scroll_enabled(%struct.libinput_device*) #1

declare dso_local i32 @set_left_handed(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_left_handed_get_default(%struct.libinput_device*) #1

declare dso_local i32 @set_click_method(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_click_get_default_method(%struct.libinput_device*) #1

declare dso_local i32 @set_middle_emulation(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_middle_emulation_get_default_enabled(%struct.libinput_device*) #1

declare dso_local i32 @set_scroll_method(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_scroll_get_default_method(%struct.libinput_device*) #1

declare dso_local i32 @set_scroll_button(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_scroll_get_default_button(%struct.libinput_device*) #1

declare dso_local i32 @set_dwt(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_dwt_get_default_enabled(%struct.libinput_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
