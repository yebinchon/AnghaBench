; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }

@SOCKET_STOP_PRE = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_STOP_POST = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_CLEANING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SOCKET_START_PRE = common dso_local global i32 0, align 4
@SOCKET_START_CHOWN = common dso_local global i32 0, align 4
@SOCKET_START_POST = common dso_local global i32 0, align 4
@UNIT_LOADED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Socket service %s not loaded, refusing.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SERVICE_DEAD = common dso_local global i32 0, align 4
@SERVICE_FAILED = common dso_local global i32 0, align 4
@SERVICE_AUTO_RESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Socket service %s already active, refusing.\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SOCKET_DEAD = common dso_local global i32 0, align 4
@SOCKET_FAILED = common dso_local global i32 0, align 4
@SOCKET_FAILURE_START_LIMIT_HIT = common dso_local global i32 0, align 4
@SOCKET_SUCCESS = common dso_local global i32 0, align 4
@_SOCKET_EXEC_COMMAND_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @socket_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_start(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = call %struct.TYPE_19__* @SOCKET(%struct.TYPE_18__* %7)
  store %struct.TYPE_19__* %8, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_19__* %9)
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SOCKET_STOP_PRE, align 4
  %15 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %16 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %17 = load i32, i32* @SOCKET_STOP_POST, align 4
  %18 = load i32, i32* @SOCKET_FINAL_SIGTERM, align 4
  %19 = load i32, i32* @SOCKET_FINAL_SIGKILL, align 4
  %20 = load i32, i32* @SOCKET_CLEANING, align 4
  %21 = call %struct.TYPE_19__* (i32, i32, i32, ...) @IN_SET(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne %struct.TYPE_19__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %119

26:                                               ; preds = %1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SOCKET_START_PRE, align 4
  %31 = load i32, i32* @SOCKET_START_CHOWN, align 4
  %32 = load i32, i32* @SOCKET_START_POST, align 4
  %33 = call %struct.TYPE_19__* (i32, i32, i32, ...) @IN_SET(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %119

36:                                               ; preds = %26
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @UNIT_ISSET(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UNIT_DEREF(i32 %45)
  %47 = call %struct.TYPE_20__* @SERVICE(i32 %46)
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %6, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_20__* %48)
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UNIT_LOADED, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_20__* %56)
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @log_unit_error(%struct.TYPE_18__* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %119

63:                                               ; preds = %42
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SERVICE_DEAD, align 4
  %68 = load i32, i32* @SERVICE_FAILED, align 4
  %69 = load i32, i32* @SERVICE_AUTO_RESTART, align 4
  %70 = call %struct.TYPE_19__* (i32, i32, i32, ...) @IN_SET(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp ne %struct.TYPE_19__* %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = call %struct.TYPE_17__* @UNIT(%struct.TYPE_20__* %74)
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @log_unit_error(%struct.TYPE_18__* %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %119

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %36
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SOCKET_DEAD, align 4
  %87 = load i32, i32* @SOCKET_FAILED, align 4
  %88 = call %struct.TYPE_19__* (i32, i32, i32, ...) @IN_SET(i32 %85, i32 %86, i32 %87)
  %89 = call i32 @assert(%struct.TYPE_19__* %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = call i32 @unit_test_start_limit(%struct.TYPE_18__* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %82
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = load i32, i32* @SOCKET_FAILURE_START_LIMIT_HIT, align 4
  %97 = call i32 @socket_enter_dead(%struct.TYPE_19__* %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %119

99:                                               ; preds = %82
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = call i32 @unit_acquire_invocation_id(%struct.TYPE_18__* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %119

106:                                              ; preds = %99
  %107 = load i32, i32* @SOCKET_SUCCESS, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @_SOCKET_EXEC_COMMAND_MAX, align 4
  %114 = call i32 @exec_command_reset_status_list_array(i32 %112, i32 %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = call i32 @socket_enter_start_pre(%struct.TYPE_19__* %117)
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %106, %104, %94, %72, %54, %35, %23
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_19__* @SOCKET(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @IN_SET(i32, i32, i32, ...) #1

declare dso_local i64 @UNIT_ISSET(i32) #1

declare dso_local %struct.TYPE_20__* @SERVICE(i32) #1

declare dso_local i32 @UNIT_DEREF(i32) #1

declare dso_local %struct.TYPE_17__* @UNIT(%struct.TYPE_20__*) #1

declare dso_local i32 @log_unit_error(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @unit_test_start_limit(%struct.TYPE_18__*) #1

declare dso_local i32 @socket_enter_dead(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @unit_acquire_invocation_id(%struct.TYPE_18__*) #1

declare dso_local i32 @exec_command_reset_status_list_array(i32, i32) #1

declare dso_local i32 @socket_enter_start_pre(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
