; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_sway_input_configure_libinput_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_sway_input_configure_libinput_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_device = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.input_config = type { i32 }
%struct.libinput_device = type { i32 }

@WLR_INPUT_DEVICE_POINTER = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_TABLET_TOOL = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_KEYBOARD = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_SWITCH = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_TOUCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"libinput_config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_input_configure_libinput_device(%struct.sway_input_device* %0) #0 {
  %2 = alloca %struct.sway_input_device*, align 8
  %3 = alloca %struct.input_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.libinput_device*, align 8
  store %struct.sway_input_device* %0, %struct.sway_input_device** %2, align 8
  %7 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %8 = call %struct.input_config* @input_device_get_config(%struct.sway_input_device* %7)
  store %struct.input_config* %8, %struct.input_config** %3, align 8
  %9 = load %struct.input_config*, %struct.input_config** %3, align 8
  %10 = icmp ne %struct.input_config* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %13 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call i32 @wlr_input_device_is_libinput(%struct.TYPE_3__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %1
  br label %94

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  %19 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %20 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %23 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__* %24)
  store %struct.libinput_device* %25, %struct.libinput_device** %6, align 8
  %26 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %27 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WLR_INPUT_DEVICE_POINTER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %18
  %34 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %35 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WLR_INPUT_DEVICE_TABLET_TOOL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33, %18
  %42 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %43 = load %struct.input_config*, %struct.input_config** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @config_libinput_pointer(%struct.libinput_device* %42, %struct.input_config* %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %88

46:                                               ; preds = %33
  %47 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %48 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @WLR_INPUT_DEVICE_KEYBOARD, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %56 = load %struct.input_config*, %struct.input_config** %3, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @config_libinput_keyboard(%struct.libinput_device* %55, %struct.input_config* %56, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %46
  %60 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %61 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WLR_INPUT_DEVICE_SWITCH, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %69 = load %struct.input_config*, %struct.input_config** %3, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @config_libinput_switch(%struct.libinput_device* %68, %struct.input_config* %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %86

72:                                               ; preds = %59
  %73 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %74 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WLR_INPUT_DEVICE_TOUCH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.libinput_device*, %struct.libinput_device** %6, align 8
  %82 = load %struct.input_config*, %struct.input_config** %3, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @config_libinput_touch(%struct.libinput_device* %81, %struct.input_config* %82, i8* %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %72
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %54
  br label %88

88:                                               ; preds = %87, %41
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %93 = call i32 @ipc_event_input(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sway_input_device* %92)
  br label %94

94:                                               ; preds = %17, %91, %88
  ret void
}

declare dso_local %struct.input_config* @input_device_get_config(%struct.sway_input_device*) #1

declare dso_local i32 @wlr_input_device_is_libinput(%struct.TYPE_3__*) #1

declare dso_local %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__*) #1

declare dso_local i32 @config_libinput_pointer(%struct.libinput_device*, %struct.input_config*, i8*) #1

declare dso_local i32 @config_libinput_keyboard(%struct.libinput_device*, %struct.input_config*, i8*) #1

declare dso_local i32 @config_libinput_switch(%struct.libinput_device*, %struct.input_config*, i8*) #1

declare dso_local i32 @config_libinput_touch(%struct.libinput_device*, %struct.input_config*, i8*) #1

declare dso_local i32 @ipc_event_input(i8*, %struct.sway_input_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
