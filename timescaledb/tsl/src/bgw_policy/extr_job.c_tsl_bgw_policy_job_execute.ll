; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_tsl_bgw_policy_job_execute.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_tsl_bgw_policy_job_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@reorder_chunk = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"scheduler tried to run an invalid job type: \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsl_bgw_policy_job_execute(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = call i64 @bgw_policy_job_requires_enterprise_license(%struct.TYPE_9__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @license_enforce_enterprise_enabled()
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i32 (...) @license_print_expiration_warning_if_needed()
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 128, label %14
    i32 129, label %18
    i32 130, label %24
    i32 131, label %27
  ]

14:                                               ; preds = %9
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = load i32, i32* @reorder_chunk, align 4
  %17 = call i32 @execute_reorder_policy(%struct.TYPE_9__* %15, i32 %16, i32 1)
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %9
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @execute_drop_chunks_policy(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %9
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = call i32 @execute_materialize_continuous_aggregate(%struct.TYPE_9__* %25)
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %9
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @execute_compress_chunks_policy(%struct.TYPE_9__* %28)
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %9
  %31 = load i32, i32* @ERROR, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NameStr(i32 %35)
  %37 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30
  %39 = call i32 (...) @pg_unreachable()
  br label %40

40:                                               ; preds = %38, %27, %24, %18, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @bgw_policy_job_requires_enterprise_license(%struct.TYPE_9__*) #1

declare dso_local i32 @license_enforce_enterprise_enabled(...) #1

declare dso_local i32 @license_print_expiration_warning_if_needed(...) #1

declare dso_local i32 @execute_reorder_policy(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @execute_drop_chunks_policy(i32) #1

declare dso_local i32 @execute_materialize_continuous_aggregate(%struct.TYPE_9__*) #1

declare dso_local i32 @execute_compress_chunks_policy(%struct.TYPE_9__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pg_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
