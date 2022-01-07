; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_sway_input_reset_libinput_device.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_sway_input_reset_libinput_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.libinput_device = type { i32 }

@WLR_INPUT_DEVICE_POINTER = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_TABLET_TOOL = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_KEYBOARD = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_SWITCH = common dso_local global i64 0, align 8
@WLR_INPUT_DEVICE_TOUCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"libinput_config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sway_input_reset_libinput_device(%struct.sway_input_device* %0) #0 {
  %2 = alloca %struct.sway_input_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.libinput_device*, align 8
  store %struct.sway_input_device* %0, %struct.sway_input_device** %2, align 8
  %5 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %6 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i32 @wlr_input_device_is_libinput(%struct.TYPE_3__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %12 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %13 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__* %14)
  store %struct.libinput_device* %15, %struct.libinput_device** %4, align 8
  %16 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %17 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLR_INPUT_DEVICE_POINTER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %11
  %24 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %25 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WLR_INPUT_DEVICE_TABLET_TOOL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23, %11
  %32 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %33 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %34 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @reset_libinput_pointer(%struct.libinput_device* %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %82

37:                                               ; preds = %23
  %38 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %39 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WLR_INPUT_DEVICE_KEYBOARD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %47 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %48 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @reset_libinput_keyboard(%struct.libinput_device* %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %81

51:                                               ; preds = %37
  %52 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %53 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WLR_INPUT_DEVICE_SWITCH, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %61 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %62 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @reset_libinput_switch(%struct.libinput_device* %60, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %80

65:                                               ; preds = %51
  %66 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %67 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WLR_INPUT_DEVICE_TOUCH, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %75 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %76 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @reset_libinput_touch(%struct.libinput_device* %74, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %65
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80, %45
  br label %82

82:                                               ; preds = %81, %31
  %83 = load i32, i32* %3, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.sway_input_device*, %struct.sway_input_device** %2, align 8
  %87 = call i32 @ipc_event_input(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.sway_input_device* %86)
  br label %88

88:                                               ; preds = %10, %85, %82
  ret void
}

declare dso_local i32 @wlr_input_device_is_libinput(%struct.TYPE_3__*) #1

declare dso_local %struct.libinput_device* @wlr_libinput_get_device_handle(%struct.TYPE_3__*) #1

declare dso_local i32 @reset_libinput_pointer(%struct.libinput_device*, i32) #1

declare dso_local i32 @reset_libinput_keyboard(%struct.libinput_device*, i32) #1

declare dso_local i32 @reset_libinput_switch(%struct.libinput_device*, i32) #1

declare dso_local i32 @reset_libinput_touch(%struct.libinput_device*, i32) #1

declare dso_local i32 @ipc_event_input(i8*, %struct.sway_input_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
