; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_touch.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }
%struct.input_config = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"config_libinput_touch('%s' on  '%s')\00", align 1
@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, %struct.input_config*, i8*)* @config_libinput_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_libinput_touch(%struct.libinput_device* %0, %struct.input_config* %1, i8* %2) #0 {
  %4 = alloca %struct.libinput_device*, align 8
  %5 = alloca %struct.input_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %4, align 8
  store %struct.input_config* %1, %struct.input_config** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @SWAY_DEBUG, align 4
  %9 = load %struct.input_config*, %struct.input_config** %5, align 8
  %10 = getelementptr inbounds %struct.input_config, %struct.input_config* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sway_log(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  store i32 0, i32* %7, align 4
  %14 = load %struct.input_config*, %struct.input_config** %5, align 8
  %15 = getelementptr inbounds %struct.input_config, %struct.input_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_MIN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %21 = load %struct.input_config*, %struct.input_config** %5, align 8
  %22 = getelementptr inbounds %struct.input_config, %struct.input_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @set_send_events(%struct.libinput_device* %20, i64 %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.input_config*, %struct.input_config** %5, align 8
  %29 = getelementptr inbounds %struct.input_config, %struct.input_config* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %35 = load %struct.input_config*, %struct.input_config** %5, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @set_calibration_matrix(%struct.libinput_device* %34, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %27
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @sway_log(i32, i8*, i32, i8*) #1

declare dso_local i32 @set_send_events(%struct.libinput_device*, i64) #1

declare dso_local i32 @set_calibration_matrix(%struct.libinput_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
