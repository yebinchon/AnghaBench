; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_udev_process_link.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_udev_process_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Failed to get udev action, ignoring device: %m\00", align 1
@DEVICE_ACTION_ADD = common dso_local global i32 0, align 4
@DEVICE_ACTION_CHANGE = common dso_local global i32 0, align 4
@DEVICE_ACTION_MOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Ignoring udev %s event for device.\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Ignoring udev ADD event for device without ifindex or with invalid ifindex: %m\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Failed to determine the device is renamed or not, ignoring '%s' uevent: %m\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"Interface is under renaming, wait for the interface to be renamed: %m\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Failed to get link from ifindex %i, ignoring: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @manager_udev_process_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_udev_process_link(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @device_get_action(i32* %19, i32* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @log_device_debug_errno(i32* %24, i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DEVICE_ACTION_ADD, align 4
  %30 = load i32, i32* @DEVICE_ACTION_CHANGE, align 4
  %31 = load i32, i32* @DEVICE_ACTION_MOVE, align 4
  %32 = call i32 @IN_SET(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @device_action_to_string(i32 %36)
  %38 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %4, align 4
  br label %85

39:                                               ; preds = %27
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @sd_device_get_ifindex(i32* %40, i32* %12)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @log_device_debug_errno(i32* %45, i32 %46, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @device_is_renaming(i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @device_action_to_string(i32 %56)
  %58 = call i32 @log_device_error_errno(i32* %54, i32 %55, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %85

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 (i32*, i8*, ...) @log_device_debug(i32* %63, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @link_get(i32* %66, i32 %67, i32** %10)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @log_debug_errno(i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %71
  store i32 0, i32* %4, align 4
  br label %85

81:                                               ; preds = %65
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @link_initialized(i32* %82, i32* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %80, %62, %53, %44, %34, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @device_get_action(i32*, i32*) #1

declare dso_local i32 @log_device_debug_errno(i32*, i32, i8*) #1

declare dso_local i32 @IN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @log_device_debug(i32*, i8*, ...) #1

declare dso_local i32 @device_action_to_string(i32) #1

declare dso_local i32 @sd_device_get_ifindex(i32*, i32*) #1

declare dso_local i32 @device_is_renaming(i32*) #1

declare dso_local i32 @log_device_error_errno(i32*, i32, i8*, i32) #1

declare dso_local i32 @link_get(i32*, i32, i32**) #1

declare dso_local i32 @log_debug_errno(i32, i8*, i32) #1

declare dso_local i32 @link_initialized(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
