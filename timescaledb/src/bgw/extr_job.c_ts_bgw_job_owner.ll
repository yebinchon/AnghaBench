; ModuleID = '/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_owner.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/bgw/extr_job.c_ts_bgw_job_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"reorder policy for job with id \22%d\22 not found\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"drop_chunks policy for job with id \22%d\22 not found\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"continuous aggregate for job with id \22%d\22 not found\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"compress chunks policy for job with id \22%d\22 not found\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"unknown job type \22%s\22 in finding owner\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_bgw_job_owner(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %104 [
    i32 129, label %11
    i32 131, label %15
    i32 132, label %37
    i32 133, label %59
    i32 134, label %78
    i32 130, label %100
    i32 128, label %103
  ]

11:                                               ; preds = %1
  %12 = call %struct.TYPE_15__* (...) @ts_catalog_database_info_get()
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_20__* @ts_bgw_policy_reorder_find_by_job(i32 %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %4, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @ERROR, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23, %15
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ts_hypertable_id_to_relid(i32 %34)
  %36 = call i32 @ts_rel_get_owner(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %112

37:                                               ; preds = %1
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_21__* @ts_bgw_policy_drop_chunks_find_by_job(i32 %41)
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %5, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = icmp eq %struct.TYPE_21__* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i32, i32* @ERROR, align 4
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ts_hypertable_id_to_relid(i32 %56)
  %58 = call i32 @ts_rel_get_owner(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %112

59:                                               ; preds = %1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @ts_continuous_agg_find_by_job_id(i32 %63)
  store i32* %64, i32** %6, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* @ERROR, align 4
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @ts_continuous_agg_get_user_view_oid(i32* %75)
  %77 = call i32 @ts_rel_get_owner(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %112

78:                                               ; preds = %1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_22__* @ts_bgw_policy_compress_chunks_find_by_job(i32 %82)
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %7, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %85 = icmp eq %struct.TYPE_22__* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load i32, i32* @ERROR, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @elog(i32 %87, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %78
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ts_hypertable_id_to_relid(i32 %97)
  %99 = call i32 @ts_rel_get_owner(i32 %98)
  store i32 %99, i32* %2, align 4
  br label %112

100:                                              ; preds = %1
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %102 = call i32 @unknown_job_type_owner_hook(%struct.TYPE_23__* %101)
  store i32 %102, i32* %2, align 4
  br label %112

103:                                              ; preds = %1
  br label %104

104:                                              ; preds = %1, %103
  %105 = load i32, i32* @ERROR, align 4
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @NameStr(i32 %109)
  %111 = call i32 @elog(i32 %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %104, %100, %93, %74, %52, %30, %11
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_15__* @ts_catalog_database_info_get(...) #1

declare dso_local %struct.TYPE_20__* @ts_bgw_policy_reorder_find_by_job(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ts_rel_get_owner(i32) #1

declare dso_local i32 @ts_hypertable_id_to_relid(i32) #1

declare dso_local %struct.TYPE_21__* @ts_bgw_policy_drop_chunks_find_by_job(i32) #1

declare dso_local i32* @ts_continuous_agg_find_by_job_id(i32) #1

declare dso_local i32 @ts_continuous_agg_get_user_view_oid(i32*) #1

declare dso_local %struct.TYPE_22__* @ts_bgw_policy_compress_chunks_find_by_job(i32) #1

declare dso_local i32 @unknown_job_type_owner_hook(%struct.TYPE_23__*) #1

declare dso_local i32 @NameStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
