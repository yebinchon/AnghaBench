; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_dispatch_io.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_device.c_device_dispatch_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Failed to get device sys path: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get udev action: %m\00", align 1
@DEVICE_ACTION_CHANGE = common dso_local global i64 0, align 8
@DEVICE_ACTION_REMOVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Failed to process swap device remove event, ignoring: %m\00", align 1
@DEVICE_FOUND_UDEV = common dso_local global i32 0, align 4
@DEVICE_FOUND_MOUNT = common dso_local global i32 0, align 4
@DEVICE_FOUND_SWAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to process swap device new event, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @device_dispatch_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_dispatch_io(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @sd_device_get_syspath(i32* %18, i8** %10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @log_device_error_errno(i32* %23, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @device_get_action(i32* %27, i64* %9)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @log_device_error_errno(i32* %32, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %98

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @DEVICE_ACTION_CHANGE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @device_propagate_reload_by_sysfs(i32* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @DEVICE_ACTION_REMOVE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @swap_process_device_remove(i32* %48, i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @log_device_warning_errno(i32* %54, i32 %55, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %61 = load i32, i32* @DEVICE_FOUND_MOUNT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @DEVICE_FOUND_SWAP, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @device_update_found_by_sysfs(i32* %58, i8* %59, i32 0, i32 %64)
  br label %97

66:                                               ; preds = %43
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 @device_is_ready(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @device_process_new(i32* %71, i32* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @swap_process_device_new(i32* %74, i32* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @log_device_warning_errno(i32* %80, i32 %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %70
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @manager_dispatch_load_queue(i32* %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %89 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %90 = call i32 @device_update_found_by_sysfs(i32* %86, i8* %87, i32 %88, i32 %89)
  br label %96

91:                                               ; preds = %66
  %92 = load i32*, i32** %8, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* @DEVICE_FOUND_UDEV, align 4
  %95 = call i32 @device_update_found_by_sysfs(i32* %92, i8* %93, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %91, %83
  br label %97

97:                                               ; preds = %96, %57
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %31, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @sd_device_get_syspath(i32*, i8**) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*) #1

declare dso_local i32 @device_get_action(i32*, i64*) #1

declare dso_local i32 @device_propagate_reload_by_sysfs(i32*, i8*) #1

declare dso_local i32 @swap_process_device_remove(i32*, i32*) #1

declare dso_local i32 @log_device_warning_errno(i32*, i32, i8*) #1

declare dso_local i32 @device_update_found_by_sysfs(i32*, i8*, i32, i32) #1

declare dso_local i64 @device_is_ready(i32*) #1

declare dso_local i32 @device_process_new(i32*, i32*) #1

declare dso_local i32 @swap_process_device_new(i32*, i32*) #1

declare dso_local i32 @manager_dispatch_load_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
