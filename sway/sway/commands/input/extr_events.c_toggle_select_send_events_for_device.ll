; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_toggle_select_send_events_for_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_toggle_select_send_events_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { i64 }
%struct.sway_input_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_config*, %struct.sway_input_device*, i32, i8**)* @toggle_select_send_events_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toggle_select_send_events_for_device(%struct.input_config* %0, %struct.sway_input_device* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.input_config*, align 8
  %6 = alloca %struct.sway_input_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.input_config* %0, %struct.input_config** %5, align 8
  store %struct.sway_input_device* %1, %struct.sway_input_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %10 = load %struct.sway_input_device*, %struct.sway_input_device** %6, align 8
  %11 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wlr_input_device_is_libinput(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %57

16:                                               ; preds = %4
  %17 = load %struct.sway_input_device*, %struct.sway_input_device** %6, align 8
  %18 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wlr_libinput_get_device_handle(i32 %19)
  %21 = call i64 @libinput_device_config_send_events_get_mode(i32 %20)
  %22 = load %struct.input_config*, %struct.input_config** %5, align 8
  %23 = getelementptr inbounds %struct.input_config, %struct.input_config* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %43, %16
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i8**, i8*** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @mode_for_name(i8* %33)
  %35 = load %struct.input_config*, %struct.input_config** %5, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %46

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %24

46:                                               ; preds = %39, %24
  %47 = load i8**, i8*** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @mode_for_name(i8* %53)
  %55 = load %struct.input_config*, %struct.input_config** %5, align 8
  %56 = getelementptr inbounds %struct.input_config, %struct.input_config* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @wlr_input_device_is_libinput(i32) #1

declare dso_local i64 @libinput_device_config_send_events_get_mode(i32) #1

declare dso_local i32 @wlr_libinput_get_device_handle(i32) #1

declare dso_local i64 @mode_for_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
