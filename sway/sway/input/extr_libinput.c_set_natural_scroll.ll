; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_set_natural_scroll.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_set_natural_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"scroll_set_natural_scroll(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, i32)* @set_natural_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_natural_scroll(%struct.libinput_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libinput_device*, align 8
  %5 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %7 = call i32 @libinput_device_config_scroll_has_natural_scroll(%struct.libinput_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %11 = call i32 @libinput_device_config_scroll_get_natural_scroll_enabled(%struct.libinput_device* %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load i32, i32* @SWAY_DEBUG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @sway_log(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @libinput_device_config_scroll_set_natural_scroll_enabled(%struct.libinput_device* %19, i32 %20)
  %22 = call i32 @log_status(i32 %21)
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @libinput_device_config_scroll_has_natural_scroll(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_scroll_get_natural_scroll_enabled(%struct.libinput_device*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @log_status(i32) #1

declare dso_local i32 @libinput_device_config_scroll_set_natural_scroll_enabled(%struct.libinput_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
