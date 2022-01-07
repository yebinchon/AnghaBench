; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_attach_device.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-dbus.c_method_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ssb\00", align 1
@SD_BUS_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Path %s is not normalized\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"/sys\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Path %s is not in /sys\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Seat name %s is not valid\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"org.freedesktop.login1.attach-device\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*)* @method_attach_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_attach_device(%struct.TYPE_13__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %19 = call i32 @assert(%struct.TYPE_13__* %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = call i32 @sd_bus_message_read(%struct.TYPE_13__* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %9, i8** %8, i32* %11)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %105

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @path_is_normalized(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @sd_bus_error_setf(i32* %31, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %4, align 4
  br label %105

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @path_startswith(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @sd_bus_error_setf(i32* %40, i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %4, align 4
  br label %105

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @SEAT_IS_SELF(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @SEAT_IS_AUTO(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48, %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @manager_get_seat_from_creds(%struct.TYPE_13__* %53, %struct.TYPE_13__* %54, i8* %55, i32* %56, %struct.TYPE_14__** %13)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %105

62:                                               ; preds = %52
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  br label %76

66:                                               ; preds = %48
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @seat_name_is_valid(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @SD_BUS_ERROR_INVALID_ARGS, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @sd_bus_error_setf(i32* %71, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  store i32 %74, i32* %4, align 4
  br label %105

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %62
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @UID_INVALID, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @bus_verify_polkit_async(%struct.TYPE_13__* %77, i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %79, i32 %80, i32* %82, i32* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %105

89:                                               ; preds = %76
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %4, align 4
  br label %105

93:                                               ; preds = %89
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @attach_device(%struct.TYPE_13__* %94, i8* %95, i8* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = call i32 @sd_bus_reply_method_return(%struct.TYPE_13__* %103, i32* null)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %100, %92, %87, %70, %60, %39, %30, %24
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_13__*, i8*, i8**, i8**, i32*) #1

declare dso_local i32 @path_is_normalized(i8*) #1

declare dso_local i32 @sd_bus_error_setf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @path_startswith(i8*, i8*) #1

declare dso_local i64 @SEAT_IS_SELF(i8*) #1

declare dso_local i64 @SEAT_IS_AUTO(i8*) #1

declare dso_local i32 @manager_get_seat_from_creds(%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i32*, %struct.TYPE_14__**) #1

declare dso_local i32 @seat_name_is_valid(i8*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_13__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @attach_device(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
