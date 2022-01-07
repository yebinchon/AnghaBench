; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_switch.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_config_libinput_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }
%struct.input_config = type { i64, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"config_libinput_switch('%s' on  '%s')\00", align 1
@INT_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, %struct.input_config*, i8*)* @config_libinput_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_libinput_switch(%struct.libinput_device* %0, %struct.input_config* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libinput_device*, align 8
  %6 = alloca %struct.input_config*, align 8
  %7 = alloca i8*, align 8
  store %struct.libinput_device* %0, %struct.libinput_device** %5, align 8
  store %struct.input_config* %1, %struct.input_config** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @SWAY_DEBUG, align 4
  %9 = load %struct.input_config*, %struct.input_config** %6, align 8
  %10 = getelementptr inbounds %struct.input_config, %struct.input_config* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @sway_log(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  %14 = load %struct.input_config*, %struct.input_config** %6, align 8
  %15 = getelementptr inbounds %struct.input_config, %struct.input_config* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_MIN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.libinput_device*, %struct.libinput_device** %5, align 8
  %21 = load %struct.input_config*, %struct.input_config** %6, align 8
  %22 = getelementptr inbounds %struct.input_config, %struct.input_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @set_send_events(%struct.libinput_device* %20, i64 %23)
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @sway_log(i32, i8*, i32, i8*) #1

declare dso_local i32 @set_send_events(%struct.libinput_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
