; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compress_utils.c_decompress_chunk_impl.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compress_utils.c_decompress_chunk_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TS_HYPERTABLE_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"table \22%s\22 is not a hypertable\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"missing compressed hypertable\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"table \22%s\22 is not a chunk\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"hypertable and chunk do not match\00", align 1
@INVALID_CHUNK_ID = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"chunk \22%s\22 is not compressed\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@HYPERTABLE_COMPRESSION = common dso_local global i32 0, align 4
@CHUNK = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @decompress_chunk_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_chunk_impl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_13__* @ts_hypertable_cache_get_entry(i32* %14, i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_TS_HYPERTABLE_NOT_EXIST, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @get_rel_name(i32 %23)
  %25 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (...) @GetUserId()
  %32 = call i32 @ts_hypertable_permissions_check(i32 %30, i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_13__* @ts_hypertable_get_by_id(i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = icmp eq %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %27
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.TYPE_14__* @ts_chunk_get_by_relid(i32 %47, i32 0, i32 1)
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = icmp eq %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @get_rel_name(i32 %55)
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = call i32 @ereport(i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @ERROR, align 4
  %71 = call i32 @elog(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %59
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @INVALID_CHUNK_ID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @ts_cache_release(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @NOTICE, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @ERROR, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %91 = call i32 @errcode(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @get_rel_name(i32 %92)
  %94 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = call i32 @ereport(i32 %89, i32 %94)
  store i32 0, i32* %4, align 4
  br label %151

96:                                               ; preds = %72
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.TYPE_14__* @ts_chunk_get_by_id(i64 %100, i32 0, i32 1)
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %12, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @AccessShareLock, align 4
  %106 = call i32 @LockRelationOid(i32 %104, i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @AccessShareLock, align 4
  %111 = call i32 @LockRelationOid(i32 %109, i32 %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AccessShareLock, align 4
  %116 = call i32 @LockRelationOid(i32 %114, i32 %115)
  %117 = call i32 (...) @ts_catalog_get()
  %118 = load i32, i32* @HYPERTABLE_COMPRESSION, align 4
  %119 = call i32 @catalog_get_table_id(i32 %117, i32 %118)
  %120 = load i32, i32* @AccessShareLock, align 4
  %121 = call i32 @LockRelationOid(i32 %119, i32 %120)
  %122 = call i32 (...) @ts_catalog_get()
  %123 = load i32, i32* @CHUNK, align 4
  %124 = call i32 @catalog_get_table_id(i32 %122, i32 %123)
  %125 = load i32, i32* @RowExclusiveLock, align 4
  %126 = call i32 @LockRelationOid(i32 %124, i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @chunk_dml_trigger_drop(i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @decompress_chunk(i32 %133, i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ts_compression_chunk_size_delete(i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %144 = load i64, i64* @INVALID_CHUNK_ID, align 8
  %145 = call i32 @ts_chunk_set_compressed_chunk(%struct.TYPE_14__* %143, i64 %144, i32 1)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = load i32, i32* @DROP_RESTRICT, align 4
  %148 = call i32 @ts_chunk_drop(%struct.TYPE_14__* %146, i32 %147, i32 -1)
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @ts_cache_release(i32* %149)
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %96, %88
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local %struct.TYPE_13__* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @ts_hypertable_permissions_check(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local %struct.TYPE_13__* @ts_hypertable_get_by_id(i32) #1

declare dso_local %struct.TYPE_14__* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local %struct.TYPE_14__* @ts_chunk_get_by_id(i64, i32, i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @catalog_get_table_id(i32, i32) #1

declare dso_local i32 @ts_catalog_get(...) #1

declare dso_local i32 @chunk_dml_trigger_drop(i32) #1

declare dso_local i32 @decompress_chunk(i32, i32) #1

declare dso_local i32 @ts_compression_chunk_size_delete(i32) #1

declare dso_local i32 @ts_chunk_set_compressed_chunk(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @ts_chunk_drop(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
