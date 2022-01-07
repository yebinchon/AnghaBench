; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_tuple_delete.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_tuple_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@Anum_hypertable_id = common dso_local global i32 0, align 4
@Anum_hypertable_compressed_hypertable_id = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@SCAN_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @hypertable_tuple_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypertable_tuple_delete(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @Anum_hypertable_id, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @heap_getattr(i32 %13, i32 %14, i32 %17, i32* %6)
  %19 = call i32 @DatumGetInt32(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @Anum_hypertable_compressed_hypertable_id, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @heap_getattr(i32 %22, i32 %23, i32 %26, i32* %7)
  %28 = call i32 @DatumGetInt32(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ts_tablespace_delete(i32 %29, i32* null)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ts_chunk_delete_by_hypertable_id(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ts_dimension_delete_by_hypertable_id(i32 %33, i32 1)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ts_bgw_policy_delete_by_hypertable_id(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ts_continuous_agg_drop_hypertable_callback(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ts_hypertable_compression_delete_by_hypertable_id(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* %9, align 4
  %45 = call i32* @ts_hypertable_get_by_id(i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* @DROP_RESTRICT, align 4
  %51 = call i32 @ts_hypertable_drop(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %2
  %54 = call i32 (...) @ts_catalog_database_info_get()
  %55 = call i32 @ts_catalog_database_info_become_owner(i32 %54, i32* %5)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ts_catalog_delete(i32 %58, i32 %61)
  %63 = call i32 @ts_catalog_restore_user(i32* %5)
  %64 = load i32, i32* @SCAN_CONTINUE, align 4
  ret i32 %64
}

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @ts_tablespace_delete(i32, i32*) #1

declare dso_local i32 @ts_chunk_delete_by_hypertable_id(i32) #1

declare dso_local i32 @ts_dimension_delete_by_hypertable_id(i32, i32) #1

declare dso_local i32 @ts_bgw_policy_delete_by_hypertable_id(i32) #1

declare dso_local i32 @ts_continuous_agg_drop_hypertable_callback(i32) #1

declare dso_local i32 @ts_hypertable_compression_delete_by_hypertable_id(i32) #1

declare dso_local i32* @ts_hypertable_get_by_id(i32) #1

declare dso_local i32 @ts_hypertable_drop(i32*, i32) #1

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
