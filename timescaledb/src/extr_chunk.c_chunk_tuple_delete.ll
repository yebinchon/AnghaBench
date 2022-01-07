; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_tuple_delete.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_tuple_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@INVALID_CHUNK_ID = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@SCAN_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*)* @chunk_tuple_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chunk_tuple_delete(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_14__* @ts_chunk_constraints_alloc(i32 2, i32 %14)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @chunk_formdata_fill(%struct.TYPE_13__* %5, i32 %20, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = call i32 @ts_chunk_constraint_delete_by_chunk_id(i32 %26, %struct.TYPE_14__* %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ts_chunk_index_delete_by_chunk_id(i32 %30, i32 1)
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ts_compression_chunk_size_delete(i32 %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %66, %2
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %46
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %10, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = call i64 @is_dimension_constraint(%struct.TYPE_15__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CurrentMemoryContext, align 4
  %57 = call i64 @ts_chunk_constraint_scan_by_dimension_slice_id(i32 %55, i32* null, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ts_dimension_slice_delete_by_id(i32 %63, i32 0)
  br label %65

65:                                               ; preds = %59, %51, %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %35

69:                                               ; preds = %35
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ts_bgw_policy_chunk_stats_delete_by_chunk_id(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INVALID_CHUNK_ID, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32* @ts_chunk_get_by_id(i64 %79, i32 0, i32 0)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DEBUG1, align 4
  %88 = call i32 @ts_chunk_drop(i32* %84, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %69
  %91 = call i32 (...) @ts_catalog_database_info_get()
  %92 = call i32 @ts_catalog_database_info_become_owner(i32 %91, i32* %6)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ts_catalog_delete(i32 %95, i32 %98)
  %100 = call i32 @ts_catalog_restore_user(i32* %6)
  %101 = load i32, i32* @SCAN_CONTINUE, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_14__* @ts_chunk_constraints_alloc(i32, i32) #1

declare dso_local i32 @chunk_formdata_fill(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ts_chunk_constraint_delete_by_chunk_id(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @ts_chunk_index_delete_by_chunk_id(i32, i32) #1

declare dso_local i32 @ts_compression_chunk_size_delete(i32) #1

declare dso_local i64 @is_dimension_constraint(%struct.TYPE_15__*) #1

declare dso_local i64 @ts_chunk_constraint_scan_by_dimension_slice_id(i32, i32*, i32) #1

declare dso_local i32 @ts_dimension_slice_delete_by_id(i32, i32) #1

declare dso_local i32 @ts_bgw_policy_chunk_stats_delete_by_chunk_id(i32) #1

declare dso_local i32* @ts_chunk_get_by_id(i64, i32, i32) #1

declare dso_local i32 @ts_chunk_drop(i32*, i32, i32) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @ts_catalog_delete(i32, i32) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
