; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_handle_virtual_keyboard.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_handle_virtual_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_manager = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_virtual_keyboard_v1 = type { %struct.wlr_input_device }
%struct.wlr_input_device = type { %struct.TYPE_3__, %struct.sway_input_device* }
%struct.TYPE_3__ = type { i32 }
%struct.sway_input_device = type { %struct.TYPE_4__, i32, i32, %struct.wlr_input_device* }
%struct.TYPE_4__ = type { i32 }
%struct.sway_seat = type { i32 }

@virtual_keyboard_new = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not allocate input device\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"adding virtual keyboard: '%s'\00", align 1
@handle_device_destroy = common dso_local global i32 0, align 4
@input_manager = common dso_local global %struct.sway_input_manager* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_virtual_keyboard(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_input_manager*, align 8
  %6 = alloca %struct.wlr_virtual_keyboard_v1*, align 8
  %7 = alloca %struct.wlr_input_device*, align 8
  %8 = alloca %struct.sway_seat*, align 8
  %9 = alloca %struct.sway_input_device*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %11 = load %struct.sway_input_manager*, %struct.sway_input_manager** %5, align 8
  %12 = ptrtoint %struct.sway_input_manager* %11 to i32
  %13 = load i32, i32* @virtual_keyboard_new, align 4
  %14 = call %struct.sway_input_manager* @wl_container_of(%struct.wl_listener* %10, i32 %12, i32 %13)
  store %struct.sway_input_manager* %14, %struct.sway_input_manager** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.wlr_virtual_keyboard_v1*
  store %struct.wlr_virtual_keyboard_v1* %16, %struct.wlr_virtual_keyboard_v1** %6, align 8
  %17 = load %struct.wlr_virtual_keyboard_v1*, %struct.wlr_virtual_keyboard_v1** %6, align 8
  %18 = getelementptr inbounds %struct.wlr_virtual_keyboard_v1, %struct.wlr_virtual_keyboard_v1* %17, i32 0, i32 0
  store %struct.wlr_input_device* %18, %struct.wlr_input_device** %7, align 8
  %19 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %19, %struct.sway_seat** %8, align 8
  %20 = call %struct.sway_input_device* @calloc(i32 1, i32 24)
  store %struct.sway_input_device* %20, %struct.sway_input_device** %9, align 8
  %21 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %22 = call i32 @sway_assert(%struct.sway_input_device* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %59

25:                                               ; preds = %2
  %26 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %27 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %28 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %27, i32 0, i32 1
  store %struct.sway_input_device* %26, %struct.sway_input_device** %28, align 8
  %29 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %30 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %31 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %30, i32 0, i32 3
  store %struct.wlr_input_device* %29, %struct.wlr_input_device** %31, align 8
  %32 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %33 = call i32 @input_device_get_identifier(%struct.wlr_input_device* %32)
  %34 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %35 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sway_input_manager*, %struct.sway_input_manager** %5, align 8
  %37 = getelementptr inbounds %struct.sway_input_manager, %struct.sway_input_manager* %36, i32 0, i32 0
  %38 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %39 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %38, i32 0, i32 2
  %40 = call i32 @wl_list_insert(i32* %37, i32* %39)
  %41 = load i32, i32* @SWAY_DEBUG, align 4
  %42 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %43 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sway_log(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %47 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %50 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %49, i32 0, i32 0
  %51 = call i32 @wl_signal_add(i32* %48, %struct.TYPE_4__* %50)
  %52 = load i32, i32* @handle_device_destroy, align 4
  %53 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %54 = getelementptr inbounds %struct.sway_input_device, %struct.sway_input_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.sway_seat*, %struct.sway_seat** %8, align 8
  %57 = load %struct.sway_input_device*, %struct.sway_input_device** %9, align 8
  %58 = call i32 @seat_add_device(%struct.sway_seat* %56, %struct.sway_input_device* %57)
  br label %59

59:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.sway_input_manager* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.sway_input_device* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_input_device*, i8*) #1

declare dso_local i32 @input_device_get_identifier(%struct.wlr_input_device*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @wl_signal_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @seat_add_device(%struct.sway_seat*, %struct.sway_input_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
