; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-utmp.c_manager_setup_wall_message_timer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-utmp.c_manager_setup_wall_message_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@USEC_PER_MINUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sd_event_source_set_time() failed. %m\00", align 1
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"sd_event_source_set_enabled() failed. %m\00", align 1
@wall_message_timeout_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"sd_event_add_time() failed. %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_setup_wall_message_timer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @assert(%struct.TYPE_6__* %7)
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = call i64 @now(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @isempty(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @warn_wall(%struct.TYPE_6__* %20, i64 %21)
  store i32 0, i32* %2, align 4
  br label %101

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %101

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i32, i32* @USEC_PER_MINUTE, align 4
  %33 = mul nsw i32 15, %32
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @warn_wall(%struct.TYPE_6__* %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %101

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @when_wall(i64 %45, i64 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %101

51:                                               ; preds = %44
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @sd_event_source_set_time(i64 %59, i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @log_error_errno(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %2, align 4
  br label %101

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %74 = call i32 @sd_event_source_set_enabled(i64 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @log_error_errno(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 %79, i32* %2, align 4
  br label %101

80:                                               ; preds = %69
  br label %100

81:                                               ; preds = %51
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* @CLOCK_REALTIME, align 4
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* @wall_message_timeout_handler, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = call i32 @sd_event_add_time(i32 %84, i64* %86, i32 %87, i64 %90, i32 0, i32 %91, %struct.TYPE_6__* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @log_error_errno(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %80
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %96, %77, %66, %50, %42, %27, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i32 @warn_wall(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @when_wall(i64, i64) #1

declare dso_local i32 @sd_event_source_set_time(i64, i64) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i64, i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
