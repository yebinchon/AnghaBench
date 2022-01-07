; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_process_job.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_process_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@JOB_WAITING = common dso_local global i64 0, align 8
@JOB_DONE = common dso_local global i32 0, align 4
@JOB_RUNNING = common dso_local global i64 0, align 8
@UNIT_ACTIVATING = common dso_local global i32 0, align 4
@UNIT_FAILED = common dso_local global i32 0, align 4
@JOB_FAILED = common dso_local global i32 0, align 4
@UNIT_NOTIFY_SKIP_CONDITION = common dso_local global i32 0, align 4
@JOB_SKIPPED = common dso_local global i32 0, align 4
@UNIT_ACTIVE = common dso_local global i32 0, align 4
@UNIT_NOTIFY_RELOAD_FAILURE = common dso_local global i32 0, align 4
@UNIT_RELOADING = common dso_local global i32 0, align 4
@UNIT_DEACTIVATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Job type unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @unit_process_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_process_job(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @assert(%struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @JOB_WAITING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @job_add_to_run_queue(%struct.TYPE_6__* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %141 [
    i32 132, label %23
    i32 128, label %23
    i32 135, label %68
    i32 134, label %68
    i32 130, label %68
    i32 131, label %117
    i32 133, label %117
    i32 129, label %117
  ]

23:                                               ; preds = %19, %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i32, i32* @JOB_DONE, align 4
  %30 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %28, i32 %29, i32 1, i32 0)
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @JOB_RUNNING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UNIT_ACTIVATING, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @UNIT_IS_INACTIVE_OR_FAILED(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @UNIT_FAILED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @JOB_FAILED, align 4
  store i32 %50, i32* %8, align 4
  br label %61

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @UNIT_NOTIFY_SKIP_CONDITION, align 4
  %54 = call i32 @FLAGS_SET(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @JOB_SKIPPED, align 4
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @JOB_DONE, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %62, i32 %63, i32 1, i32 0)
  br label %65

65:                                               ; preds = %61, %41
  br label %66

66:                                               ; preds = %65, %37, %31
  br label %67

67:                                               ; preds = %66, %27
  br label %143

68:                                               ; preds = %19, %19, %19
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @JOB_RUNNING, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @UNIT_ACTIVE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @UNIT_NOTIFY_RELOAD_FAILURE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @JOB_FAILED, align 4
  br label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @JOB_DONE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %79, i32 %89, i32 1, i32 0)
  br label %115

91:                                               ; preds = %74
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @UNIT_ACTIVATING, align 4
  %94 = load i32, i32* @UNIT_RELOADING, align 4
  %95 = call i32 @IN_SET(i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %91
  store i32 1, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @UNIT_IS_INACTIVE_OR_FAILED(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @UNIT_FAILED, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @JOB_FAILED, align 4
  br label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @JOB_DONE, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %102, i32 %111, i32 1, i32 0)
  br label %113

113:                                              ; preds = %110, %97
  br label %114

114:                                              ; preds = %113, %91
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %68
  br label %143

117:                                              ; preds = %19, %19, %19
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @UNIT_IS_INACTIVE_OR_FAILED(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = load i32, i32* @JOB_DONE, align 4
  %124 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %122, i32 %123, i32 1, i32 0)
  br label %140

125:                                              ; preds = %117
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @JOB_RUNNING, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @UNIT_DEACTIVATING, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  store i32 1, i32* %7, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = load i32, i32* @JOB_FAILED, align 4
  %138 = call i32 @job_finish_and_invalidate(%struct.TYPE_6__* %136, i32 %137, i32 1, i32 0)
  br label %139

139:                                              ; preds = %135, %131, %125
  br label %140

140:                                              ; preds = %139, %121
  br label %143

141:                                              ; preds = %19
  %142 = call i32 @assert_not_reached(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %140, %116, %67
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @job_add_to_run_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @UNIT_IS_ACTIVE_OR_RELOADING(i32) #1

declare dso_local i32 @job_finish_and_invalidate(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @UNIT_IS_INACTIVE_OR_FAILED(i32) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
