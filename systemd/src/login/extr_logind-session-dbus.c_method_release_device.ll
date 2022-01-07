; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_method_release_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_method_release_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"uu\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Device major/minor is not valid.\00", align 1
@BUS_ERROR_NOT_IN_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"You are not in control of this session\00", align 1
@BUS_ERROR_DEVICE_NOT_TAKEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Device not taken\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*)* @method_release_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_release_device(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @DEVICE_MAJOR_VALID(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DEVICE_MINOR_VALID(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %26
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %37 = call i32 @sd_bus_error_setf(i32* %35, i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %69

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @sd_bus_message_get_sender(%struct.TYPE_10__* %40)
  %42 = call i32 @session_is_controller(%struct.TYPE_10__* %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @BUS_ERROR_NOT_IN_CONTROL, align 4
  %47 = call i32 @sd_bus_error_setf(i32* %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %69

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @makedev(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @hashmap_get(i32 %54, i32* %12)
  store i32* %55, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BUS_ERROR_DEVICE_NOT_TAKEN, align 4
  %61 = call i32 @sd_bus_error_setf(i32* %59, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %48
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @session_device_free(i32* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = call i32 @session_save(%struct.TYPE_10__* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %67, i32* null)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %58, %44, %34, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_10__*, i8*, i32*, i32*) #1

declare dso_local i32 @DEVICE_MAJOR_VALID(i32) #1

declare dso_local i32 @DEVICE_MINOR_VALID(i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @session_is_controller(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sd_bus_message_get_sender(%struct.TYPE_10__*) #1

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local i32* @hashmap_get(i32, i32*) #1

declare dso_local i32 @session_device_free(i32*) #1

declare dso_local i32 @session_save(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
