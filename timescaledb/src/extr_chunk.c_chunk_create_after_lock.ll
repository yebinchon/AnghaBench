; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_create_after_lock.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_create_after_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_24__, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }

@CHUNK = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s_%d_chunk\00", align 1
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not create chunk table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (%struct.TYPE_25__*, i32*, i8*, i8*)* @chunk_create_after_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @chunk_create_after_lock(%struct.TYPE_25__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %9, align 8
  %17 = call i32* (...) @ts_catalog_get()
  store i32* %17, i32** %10, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @calculate_and_set_new_chunk_interval(%struct.TYPE_25__* %18, i32* %19)
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_27__* @ts_hypercube_calculate_from_point(%struct.TYPE_26__* %21, i32* %22)
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %12, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @chunk_collision_resolve(%struct.TYPE_26__* %24, %struct.TYPE_27__* %25, i32* %26)
  %28 = call i32 (...) @ts_catalog_database_info_get()
  %29 = call i32 @ts_catalog_database_info_become_owner(i32 %28, i32* %11)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @CHUNK, align 4
  %32 = call i32 @ts_catalog_table_next_seq_id(i32* %30, i32 %31)
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_28__* @ts_chunk_create_stub(i32 %32, i32 %35)
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %13, align 8
  %37 = call i32 @ts_catalog_restore_user(i32* %11)
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 4
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %46, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @namestrcpy(i32* %54, i8* %55)
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NAMEDATALEN, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @snprintf(i32 %61, i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %67)
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %70 = load i32, i32* @RowExclusiveLock, align 4
  %71 = call i32 @ts_chunk_insert_lock(%struct.TYPE_28__* %69, i32 %70)
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ts_dimension_slice_insert_multi(i32 %74, i32 %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %80 = call i32 @ts_chunk_add_constraints(%struct.TYPE_28__* %79)
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %85 = call i32 @ts_hypertable_select_tablespace_name(%struct.TYPE_25__* %83, %struct.TYPE_28__* %84)
  %86 = call i32 @ts_chunk_create_table(%struct.TYPE_28__* %81, %struct.TYPE_25__* %82, i32 %85)
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @OidIsValid(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %4
  %95 = load i32, i32* @ERROR, align 4
  %96 = call i32 @elog(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %4
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ts_chunk_constraints_create(i32 %100, i32 %103, i32 %107, i32 %110, i32 %114)
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %118 = call i32 @ts_trigger_create_all_on_chunk(%struct.TYPE_25__* %116, %struct.TYPE_28__* %117)
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ts_chunk_index_create_all(i32 %122, i32 %125, i32 %129, i32 %132)
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  ret %struct.TYPE_28__* %134
}

declare dso_local i32* @ts_catalog_get(...) #1

declare dso_local i32 @calculate_and_set_new_chunk_interval(%struct.TYPE_25__*, i32*) #1

declare dso_local %struct.TYPE_27__* @ts_hypercube_calculate_from_point(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @chunk_collision_resolve(%struct.TYPE_26__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local %struct.TYPE_28__* @ts_chunk_create_stub(i32, i32) #1

declare dso_local i32 @ts_catalog_table_next_seq_id(i32*, i32) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ts_chunk_insert_lock(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @ts_dimension_slice_insert_multi(i32, i32) #1

declare dso_local i32 @ts_chunk_add_constraints(%struct.TYPE_28__*) #1

declare dso_local i32 @ts_chunk_create_table(%struct.TYPE_28__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ts_hypertable_select_tablespace_name(%struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ts_chunk_constraints_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ts_trigger_create_all_on_chunk(%struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ts_chunk_index_create_all(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
