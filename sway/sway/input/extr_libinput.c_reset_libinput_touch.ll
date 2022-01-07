; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_reset_libinput_touch.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_reset_libinput_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"reset_libinput_touch(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, i8*)* @reset_libinput_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_libinput_touch(%struct.libinput_device* %0, i8* %1) #0 {
  %3 = alloca %struct.libinput_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x float], align 16
  store %struct.libinput_device* %0, %struct.libinput_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @SWAY_DEBUG, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @sway_log(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i32 0, i32* %5, align 4
  %10 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %11 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %12 = call i32 @libinput_device_config_send_events_get_default_mode(%struct.libinput_device* %11)
  %13 = call i32 @set_send_events(%struct.libinput_device* %10, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %17 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 0
  %18 = call i32 @libinput_device_config_calibration_get_default_matrix(%struct.libinput_device* %16, float* %17)
  %19 = load %struct.libinput_device*, %struct.libinput_device** %3, align 8
  %20 = getelementptr inbounds [6 x float], [6 x float]* %6, i64 0, i64 0
  %21 = call i32 @set_calibration_matrix(%struct.libinput_device* %19, float* %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i32 @set_send_events(%struct.libinput_device*, i32) #1

declare dso_local i32 @libinput_device_config_send_events_get_default_mode(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_calibration_get_default_matrix(%struct.libinput_device*, float*) #1

declare dso_local i32 @set_calibration_matrix(%struct.libinput_device*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
