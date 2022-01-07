; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_reindex.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_reindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@NoLock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"REINDEX\00", align 1
@reindex_chunk = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"reindexing of a specific index on a hypertable is unsupported\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"As a workaround, it is possible to run REINDEX TABLE to reindex all indexes on a hypertable, including all indexes on chunks.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @process_reindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_reindex(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* null, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @NoLock, align 4
  %23 = call i32 @RangeVarGetRelid(i32* %21, i32 %22, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OidIsValid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %85

28:                                               ; preds = %18
  %29 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %29, i32** %6, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %80 [
    i32 128, label %33
    i32 129, label %57
  ]

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.TYPE_14__* @ts_hypertable_cache_get_entry(i32* %34, i32 %35)
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = icmp ne %struct.TYPE_14__* null, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = call i32 @PreventCommandDuringRecovery(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ts_hypertable_permissions_check_by_id(i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = load i32, i32* @reindex_chunk, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = call i32 @foreach_chunk(%struct.TYPE_14__* %46, i32 %47, %struct.TYPE_12__* %48)
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = call i32 @process_add_hypertable(%struct.TYPE_13__* %53, %struct.TYPE_14__* %54)
  br label %56

56:                                               ; preds = %52, %33
  br label %81

57:                                               ; preds = %28
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @IndexGetRelation(i32 %59, i32 1)
  %61 = call %struct.TYPE_14__* @ts_hypertable_cache_get_entry(i32* %58, i32 %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %7, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = icmp ne %struct.TYPE_14__* null, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call i32 @process_add_hypertable(%struct.TYPE_13__* %65, %struct.TYPE_14__* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ts_hypertable_permissions_check_by_id(i32 %71)
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @errhint(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ereport(i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %64, %57
  br label %81

80:                                               ; preds = %28
  br label %81

81:                                               ; preds = %80, %79, %56
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @ts_cache_release(i32* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %27, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @RangeVarGetRelid(i32*, i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_14__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @PreventCommandDuringRecovery(i8*) #1

declare dso_local i32 @ts_hypertable_permissions_check_by_id(i32) #1

declare dso_local i32 @foreach_chunk(%struct.TYPE_14__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @process_add_hypertable(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @IndexGetRelation(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
