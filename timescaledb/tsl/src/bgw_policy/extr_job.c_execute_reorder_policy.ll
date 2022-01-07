; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_reorder_policy.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/bgw_policy/extr_job.c_execute_reorder_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"could not run reorder policy #%d because no args in policy table\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"no chunks need reordering for hypertable %s.%s\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"reordering chunk %s.%s\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"completed reordering chunk %s.%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"reorder\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_reorder_policy(%struct.TYPE_20__* %0, i32 (i32, i32, i32, i32, i32, i32)* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32 (i32, i32, i32, i32, i32, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 (i32, i32, i32, i32, i32, i32)* %1, i32 (i32, i32, i32, i32, i32, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = call i32 (...) @IsTransactionOrTransactionBlock()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %20 = call i32 (...) @StartTransactionCommand()
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.TYPE_19__* @ts_bgw_policy_reorder_find_by_job(i32 %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %9, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %25 = icmp eq %struct.TYPE_19__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_TS_INTERNAL_ERROR, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_29__* @ts_hypertable_get_by_id(i32 %37)
  store %struct.TYPE_29__* %38, %struct.TYPE_29__** %10, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %44 = call i32 @get_chunk_id_to_reorder(i32 %42, %struct.TYPE_29__* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load i32, i32* @NOTICE, align 4
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %58)
  br label %130

60:                                               ; preds = %33
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.TYPE_30__* @ts_chunk_get_by_id(i32 %61, i32 0, i32 0)
  store %struct.TYPE_30__* %62, %struct.TYPE_30__** %11, align 8
  %63 = load i32, i32* @LOG, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @elog(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %73)
  %75 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %5, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NameStr(i32 %83)
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @NameStr(i32 %89)
  %91 = call i32 @get_namespace_oid(i32 %90, i32 0)
  %92 = call i32 @get_relname_relid(i32 %84, i32 %91)
  %93 = load i32, i32* @InvalidOid, align 4
  %94 = load i32, i32* @InvalidOid, align 4
  %95 = load i32, i32* @InvalidOid, align 4
  %96 = call i32 %75(i32 %78, i32 %92, i32 0, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* @LOG, align 4
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @elog(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (...) @ts_timer_get_current_timestamp()
  %115 = call i32 @ts_bgw_policy_chunk_stats_record_job_run(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %60
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %124 = call i32 @get_chunk_id_to_reorder(i32 %122, %struct.TYPE_29__* %123)
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %128 = call i32 @enable_fast_restart(%struct.TYPE_20__* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %118, %60
  br label %130

130:                                              ; preds = %129, %47
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (...) @CommitTransactionCommand()
  br label %135

135:                                              ; preds = %133, %130
  ret i32 1
}

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local %struct.TYPE_19__* @ts_bgw_policy_reorder_find_by_job(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local %struct.TYPE_29__* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32 @get_chunk_id_to_reorder(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_30__* @ts_chunk_get_by_id(i32, i32, i32) #1

declare dso_local i32 @get_relname_relid(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_namespace_oid(i32, i32) #1

declare dso_local i32 @ts_bgw_policy_chunk_stats_record_job_run(i32, i32, i32) #1

declare dso_local i32 @ts_timer_get_current_timestamp(...) #1

declare dso_local i32 @enable_fast_restart(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
