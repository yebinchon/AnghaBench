; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_dispatch_idle_action.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind.c_manager_dispatch_idle_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.dual_timestamp = type { i64 }

@HANDLE_IGNORE = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"System idle. Doing %s operation.\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to add idle event source: %m\00", align 1
@SD_EVENT_PRIORITY_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to set idle event source priority: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to set idle event timer: %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to enable idle event timer: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @manager_dispatch_idle_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_dispatch_idle_action(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.dual_timestamp, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = call i32 @assert(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HANDLE_IGNORE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %149

28:                                               ; preds = %22
  %29 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %30 = call i64 @now(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = call i32 @manager_get_idle_hint(%struct.TYPE_6__* %31, %struct.dual_timestamp* %9)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %11, align 8
  br label %90

41:                                               ; preds = %28
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.dual_timestamp, %struct.dual_timestamp* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp sge i64 %42, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = icmp sge i64 %56, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %55, %50
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @handle_action_to_string(i64 %68)
  %70 = call i32 @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @manager_handle_action(%struct.TYPE_6__* %71, i32 0, i64 %74, i32 0, i32 0)
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %65, %55, %41
  %80 = getelementptr inbounds %struct.dual_timestamp, %struct.dual_timestamp* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @MAX(i64 %81, i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %79, %35
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* @USEC_PER_SEC, align 4
  %104 = mul nsw i32 %103, 30
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = call i32 @sd_event_add_time(i32 %98, i32* %100, i32 %101, i64 %102, i32 %104, i32 (i32*, i32, i8*)* @manager_dispatch_idle_action, %struct.TYPE_6__* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @log_error_errno(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 %111, i32* %4, align 4
  br label %149

112:                                              ; preds = %95
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* @SD_EVENT_PRIORITY_IDLE, align 8
  %117 = add nsw i64 %116, 10
  %118 = call i32 @sd_event_source_set_priority(i32 %115, i64 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @log_error_errno(i32 %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 %123, i32* %4, align 4
  br label %149

124:                                              ; preds = %112
  br label %148

125:                                              ; preds = %90
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @sd_event_source_set_time(i32 %128, i64 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @log_error_errno(i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 %135, i32* %4, align 4
  br label %149

136:                                              ; preds = %125
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %141 = call i32 @sd_event_source_set_enabled(i32 %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @log_error_errno(i32 %145, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 %146, i32* %4, align 4
  br label %149

147:                                              ; preds = %136
  br label %148

148:                                              ; preds = %147, %124
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %144, %133, %121, %109, %27
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @manager_get_idle_hint(%struct.TYPE_6__*, %struct.dual_timestamp*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @handle_action_to_string(i64) #1

declare dso_local i32 @manager_handle_action(%struct.TYPE_6__*, i32, i64, i32, i32) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @sd_event_add_time(i32, i32*, i32, i64, i32, i32 (i32*, i32, i8*)*, %struct.TYPE_6__*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i32 @sd_event_source_set_time(i32, i64) #1

declare dso_local i32 @sd_event_source_set_enabled(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
