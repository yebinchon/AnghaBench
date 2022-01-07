; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_materialize_continuous_aggregate.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_materialize_continuous_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot find continuous aggregate for job %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"materialize continuous aggregate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @execute_materialize_continuous_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_materialize_continuous_aggregate(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @IsTransactionOrTransactionBlock()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %9 = call i32 (...) @StartTransactionCommand()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ts_continuous_agg_job_find_materializtion_by_job_id(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load i32, i32* @ERROR, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %18, %10
  %26 = call i32 (...) @CommitTransactionCommand()
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @continuous_agg_materialize(i64 %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = call i32 (...) @StartTransactionCommand()
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @enable_fast_restart(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @CommitTransactionCommand()
  br label %40

40:                                               ; preds = %38, %35
  ret i32 1
}

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i64 @ts_continuous_agg_job_find_materializtion_by_job_id(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @continuous_agg_materialize(i64, i32) #1

declare dso_local i32 @enable_fast_restart(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
