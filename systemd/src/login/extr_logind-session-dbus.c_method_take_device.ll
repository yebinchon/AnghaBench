; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_method_take_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-session-dbus.c_method_take_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"uu\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Device major/minor is not valid.\00", align 1
@BUS_ERROR_NOT_IN_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"You are not in control of this session\00", align 1
@BUS_ERROR_DEVICE_IS_TAKEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Device already taken\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*)* @method_take_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_take_device(%struct.TYPE_16__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_16__* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_16__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %4, align 4
  br label %98

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
  br label %98

38:                                               ; preds = %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @sd_bus_message_get_sender(%struct.TYPE_16__* %40)
  %42 = call i32 @session_is_controller(%struct.TYPE_16__* %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @BUS_ERROR_NOT_IN_CONTROL, align 4
  %47 = call i32 @sd_bus_error_setf(i32* %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %98

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @makedev(i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_17__* @hashmap_get(i32 %54, i32* %12)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %11, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BUS_ERROR_DEVICE_IS_TAKEN, align 4
  %61 = call i32 @sd_bus_error_setf(i32* %59, i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  br label %98

62:                                               ; preds = %48
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @session_device_new(%struct.TYPE_16__* %63, i32 %64, i32 1, %struct.TYPE_17__** %11)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %4, align 4
  br label %98

70:                                               ; preds = %62
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = call i32 @session_device_save(%struct.TYPE_17__* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %94

76:                                               ; preds = %70
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @sd_bus_reply_method_return(%struct.TYPE_16__* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %94

91:                                               ; preds = %76
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = call i32 @session_save(%struct.TYPE_16__* %92)
  store i32 1, i32* %4, align 4
  br label %98

94:                                               ; preds = %90, %75
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = call i32 @session_device_free(%struct.TYPE_17__* %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %91, %68, %58, %44, %34, %24
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_16__*, i8*, i32*, i32*) #1

declare dso_local i32 @DEVICE_MAJOR_VALID(i32) #1

declare dso_local i32 @DEVICE_MINOR_VALID(i32) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*) #1

declare dso_local i32 @session_is_controller(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_bus_message_get_sender(%struct.TYPE_16__*) #1

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local %struct.TYPE_17__* @hashmap_get(i32, i32*) #1

declare dso_local i32 @session_device_new(%struct.TYPE_16__*, i32, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @session_device_save(%struct.TYPE_17__*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @session_save(%struct.TYPE_16__*) #1

declare dso_local i32 @session_device_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
