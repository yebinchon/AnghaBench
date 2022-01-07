; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_start.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i8*, i8* }

@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_STOP_WATCHDOG = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_STOP_POST = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_CLEANING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SERVICE_CONDITION = common dso_local global i32 0, align 4
@SERVICE_START_PRE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_START_POST = common dso_local global i32 0, align 4
@SERVICE_AUTO_RESTART = common dso_local global i64 0, align 8
@SERVICE_DEAD = common dso_local global i32 0, align 4
@SERVICE_FAILED = common dso_local global i32 0, align 4
@SERVICE_FAILURE_START_LIMIT_HIT = common dso_local global i32 0, align 4
@SERVICE_SUCCESS = common dso_local global i8* null, align 8
@NOTIFY_UNKNOWN = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i32 0, align 4
@_SERVICE_EXEC_COMMAND_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @service_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_start(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = call %struct.TYPE_13__* @SERVICE(%struct.TYPE_12__* %6)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @SERVICE_STOP, align 4
  %14 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %15 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %16 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %17 = load i32, i32* @SERVICE_STOP_POST, align 4
  %18 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %19 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %20 = load i32, i32* @SERVICE_CLEANING, align 4
  %21 = call %struct.TYPE_13__* (i64, i32, i32, ...) @IN_SET(i64 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @SERVICE_CONDITION, align 4
  %31 = load i32, i32* @SERVICE_START_PRE, align 4
  %32 = load i32, i32* @SERVICE_START, align 4
  %33 = load i32, i32* @SERVICE_START_POST, align 4
  %34 = call %struct.TYPE_13__* (i64, i32, i32, ...) @IN_SET(i64 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %126

37:                                               ; preds = %26
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SERVICE_AUTO_RESTART, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %126

46:                                               ; preds = %37
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @SERVICE_DEAD, align 4
  %51 = load i32, i32* @SERVICE_FAILED, align 4
  %52 = call %struct.TYPE_13__* (i64, i32, i32, ...) @IN_SET(i64 %49, i32 %50, i32 %51)
  %53 = call i32 @assert(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = call i32 @unit_test_start_limit(%struct.TYPE_12__* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = load i32, i32* @SERVICE_FAILURE_START_LIMIT_HIT, align 4
  %61 = call i32 @service_enter_dead(%struct.TYPE_13__* %59, i32 %60, i32 0)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %126

63:                                               ; preds = %46
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = call i32 @unit_acquire_invocation_id(%struct.TYPE_12__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %126

70:                                               ; preds = %63
  %71 = load i8*, i8** @SERVICE_SUCCESS, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 16
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @SERVICE_SUCCESS, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 15
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 14
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mfree(i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 14
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 13
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @NOTIFY_UNKNOWN, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* @USEC_INFINITY, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 9
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @_SERVICE_EXEC_COMMAND_MAX, align 4
  %108 = call i32 @exec_command_reset_status_list_array(i32 %106, i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 7
  %111 = call i32 @exec_status_reset(i32* %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %70
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %70
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = call i32 @service_enter_condition(%struct.TYPE_13__* %124)
  store i32 1, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %68, %58, %43, %36, %23
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_13__* @SERVICE(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @IN_SET(i64, i32, i32, ...) #1

declare dso_local i32 @unit_test_start_limit(%struct.TYPE_12__*) #1

declare dso_local i32 @service_enter_dead(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @unit_acquire_invocation_id(%struct.TYPE_12__*) #1

declare dso_local i32 @mfree(i32) #1

declare dso_local i32 @exec_command_reset_status_list_array(i32, i32) #1

declare dso_local i32 @exec_status_reset(i32*) #1

declare dso_local i32 @service_enter_condition(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
