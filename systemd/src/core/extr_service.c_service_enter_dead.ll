; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_dead.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_enter_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@SERVICE_SUCCESS = common dso_local global i64 0, align 8
@SERVICE_DEAD = common dso_local global i32 0, align 4
@SERVICE_SKIP_CONDITION = common dso_local global i64 0, align 8
@SERVICE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Service restart not allowed.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Service will %srestart (%s)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SERVICE_AUTO_RESTART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to run install restart timer: %m\00", align 1
@SERVICE_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i32)* @service_enter_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_enter_dead(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @UNIT(%struct.TYPE_8__* %13)
  %15 = call i64 @unit_stop_pending(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERVICE_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SERVICE_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32 @UNIT(%struct.TYPE_8__* %35)
  %37 = call i32 @unit_log_success(i32 %36)
  %38 = load i32, i32* @SERVICE_DEAD, align 4
  store i32 %38, i32* %7, align 4
  br label %64

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SERVICE_SKIP_CONDITION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @UNIT(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @service_result_to_string(i64 %50)
  %52 = call i32 @unit_log_skip(i32 %47, i32 %51)
  %53 = load i32, i32* @SERVICE_DEAD, align 4
  store i32 %53, i32* %7, align 4
  br label %63

54:                                               ; preds = %39
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @UNIT(%struct.TYPE_8__* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @service_result_to_string(i64 %59)
  %61 = call i32 @unit_log_failure(i32 %56, i32 %60)
  %62 = load i32, i32* @SERVICE_FAILED, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %54, %45
  br label %64

64:                                               ; preds = %63, %34
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i32 @UNIT(%struct.TYPE_8__* %68)
  %70 = call i32 (i32, i8*, ...) @log_unit_debug(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %88

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = call i32 @service_shall_restart(%struct.TYPE_8__* %72, i8** %9)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = call i32 @UNIT(%struct.TYPE_8__* %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 (i32, i8*, ...) @log_unit_debug(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %71
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @service_set_state(%struct.TYPE_8__* %93, i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %122

100:                                              ; preds = %88
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %105 = call i32 @now(i32 %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usec_add(i32 %105, i32 %108)
  %110 = call i32 @service_arm_timer(%struct.TYPE_8__* %103, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 8
  br label %165

118:                                              ; preds = %100
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = load i32, i32* @SERVICE_AUTO_RESTART, align 4
  %121 = call i32 @service_set_state(%struct.TYPE_8__* %119, i32 %120)
  br label %125

122:                                              ; preds = %88
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %118
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = call i32 @UNIT(%struct.TYPE_8__* %130)
  %132 = call i32 @unit_add_to_gc_queue(i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i32 0, i32* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @exec_runtime_unref(i32 %137, i32 1)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = call i32 @UNIT(%struct.TYPE_8__* %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  %145 = call i32 @unit_destroy_runtime_directory(i32 %142, i32* %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = call i32 @UNIT(%struct.TYPE_8__* %146)
  %148 = call i32 @unit_unref_uid_gid(i32 %147, i32 1)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 6
  %151 = call i32 @dynamic_creds_destroy(i32* %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %125
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @unlink(i64 %159)
  br label %161

161:                                              ; preds = %156, %125
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  %164 = call i32 @exec_context_revert_tty(i32* %163)
  br label %172

165:                                              ; preds = %113
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = call i32 @UNIT(%struct.TYPE_8__* %166)
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @log_unit_warning_errno(i32 %167, i32 %168, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = load i64, i64* @SERVICE_FAILURE_RESOURCES, align 8
  call void @service_enter_dead(%struct.TYPE_8__* %170, i64 %171, i32 0)
  br label %172

172:                                              ; preds = %165, %161
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i64 @unit_stop_pending(i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_8__*) #1

declare dso_local i32 @unit_log_success(i32) #1

declare dso_local i32 @unit_log_skip(i32, i32) #1

declare dso_local i32 @service_result_to_string(i64) #1

declare dso_local i32 @unit_log_failure(i32, i32) #1

declare dso_local i32 @log_unit_debug(i32, i8*, ...) #1

declare dso_local i32 @service_shall_restart(%struct.TYPE_8__*, i8**) #1

declare dso_local i32 @service_set_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @service_arm_timer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @unit_add_to_gc_queue(i32) #1

declare dso_local i32 @exec_runtime_unref(i32, i32) #1

declare dso_local i32 @unit_destroy_runtime_directory(i32, i32*) #1

declare dso_local i32 @unit_unref_uid_gid(i32, i32) #1

declare dso_local i32 @dynamic_creds_destroy(i32*) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @exec_context_revert_tty(i32*) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
