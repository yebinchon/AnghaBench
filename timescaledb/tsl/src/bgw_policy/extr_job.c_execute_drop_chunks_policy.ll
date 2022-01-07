; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_drop_chunks_policy.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_drop_chunks_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"could not run drop_chunks policy #%d because no args in policy table\00", align 1
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"could not run drop_chunks policy #%d because \22%s\22 is not a hypertable\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"completed dropping chunks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_drop_chunks_policy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = call i32 (...) @IsTransactionOrTransactionBlock()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %12 = call i32 (...) @StartTransactionCommand()
  %13 = call i32 (...) @GetTransactionSnapshot()
  %14 = call i32 @PushActiveSnapshot(i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.TYPE_8__* @ts_bgw_policy_drop_chunks_find_by_job(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_TS_INTERNAL_ERROR, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ts_hypertable_id_to_relid(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.TYPE_7__* @ts_hypertable_cache_get_entry(i32* %34, i32 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @get_rel_name(i32 %44)
  %46 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45)
  %47 = call i32 @ereport(i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %39, %27
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32* @hyperspace_get_open_dimension(i32 %51, i32 0)
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @ts_interval_subtract_from_now(i32* %56, i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @ts_dimension_get_partition_type(i32* %59)
  %61 = load i32, i32* @InvalidOid, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LOG, align 4
  %71 = call i32 @ts_chunk_do_drop_chunks(i32 %53, i32 %58, i32 0, i32 %60, i32 %61, i32 %65, i32 %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @ts_cache_release(i32* %72)
  %74 = load i32, i32* @LOG, align 4
  %75 = call i32 @elog(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %48
  %79 = call i32 (...) @PopActiveSnapshot()
  %80 = call i32 (...) @CommitTransactionCommand()
  br label %81

81:                                               ; preds = %78, %48
  ret i32 1
}

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local %struct.TYPE_8__* @ts_bgw_policy_drop_chunks_find_by_job(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @ts_hypertable_id_to_relid(i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_7__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i32 @ts_chunk_do_drop_chunks(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ts_interval_subtract_from_now(i32*, i32*) #1

declare dso_local i32 @ts_dimension_get_partition_type(i32*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
