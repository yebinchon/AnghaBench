; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_create_compress_chunk_table.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_create.c_create_compress_chunk_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }

@CHUNK = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@INTERNAL_SCHEMA_NAME = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"compress%s_%d_chunk\00", align 1
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not create compress chunk table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @create_compress_chunk_table(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %5, align 8
  %12 = call i32* (...) @ts_catalog_get()
  store i32* %12, i32** %6, align 8
  %13 = call i32 (...) @ts_catalog_database_info_get()
  %14 = call i32 @ts_catalog_database_info_become_owner(i32 %13, i32* %7)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @CHUNK, align 4
  %17 = call i32 @ts_catalog_table_next_seq_id(i32* %15, i32 %16)
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_21__* @ts_chunk_create_stub(i32 %17, i32 %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = call i32 @ts_catalog_restore_user(i32* %7)
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @CurrentMemoryContext, align 4
  %40 = call i32 @ts_chunk_constraints_alloc(i32 1, i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load i32, i32* @INTERNAL_SCHEMA_NAME, align 4
  %47 = call i32 @namestrcpy(i32* %45, i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NAMEDATALEN, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @NameStr(i32 %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = load i32, i32* @RowExclusiveLock, align 4
  %66 = call i32 @ts_chunk_insert_lock(%struct.TYPE_21__* %64, i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ts_chunk_constraints_add_inheritable_constraints(i32 %69, i32 %73, i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @get_rel_tablespace(i32 %82)
  %84 = call i32 @get_tablespace_name(i32 %83)
  %85 = call i32 @ts_chunk_create_table(%struct.TYPE_21__* %78, %struct.TYPE_19__* %79, i32 %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @OidIsValid(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %2
  %94 = load i32, i32* @ERROR, align 4
  %95 = call i32 @elog(i32 %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %2
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ts_chunk_constraints_create(i32 %99, i32 %102, i32 %106, i32 %109, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %117 = call i32 @ts_trigger_create_all_on_chunk(%struct.TYPE_19__* %115, %struct.TYPE_21__* %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ts_chunk_index_create_all(i32 %121, i32 %124, i32 %128, i32 %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  ret %struct.TYPE_21__* %133
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local %struct.TYPE_21__* @ts_chunk_create_stub(i32, i32) #1

declare dso_local i32 @ts_catalog_table_next_seq_id(i32*, i32) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

declare dso_local i32 @ts_chunk_constraints_alloc(i32, i32) #1

declare dso_local i32 @namestrcpy(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @ts_chunk_insert_lock(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ts_chunk_constraints_add_inheritable_constraints(i32, i32, i32) #1

declare dso_local i32 @ts_chunk_create_table(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @get_tablespace_name(i32) #1

declare dso_local i32 @get_rel_tablespace(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_chunk_constraints_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ts_trigger_create_all_on_chunk(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ts_chunk_index_create_all(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
