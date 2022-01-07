; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_ts_tablespace_delete.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_ts_tablespace_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX = common dso_local global i32 0, align 4
@tablespace_tuple_delete = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_tablespace_delete(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* null, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %14 = call i32 (...) @ts_catalog_database_info_get()
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %17
  %19 = load i32, i32* @Anum_tablespace_hypertable_id_tablespace_name_idx_hypertable_id, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_INT4EQ, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @Int32GetDatum(i32 %22)
  %24 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* null, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %30
  %32 = load i32, i32* @Anum_tablespace_hypertable_id_tablespace_name_idx_tablespace_name, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_NAMEEQ, align 4
  %35 = load i32, i32* @namein, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @CStringGetDatum(i8* %36)
  %38 = call i32 @DirectFunctionCall1(i32 %35, i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %31, i32 %32, i32 %33, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %27, %2
  %41 = load i32, i32* @TABLESPACE_HYPERTABLE_ID_TABLESPACE_NAME_IDX, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @tablespace_tuple_delete, align 4
  %45 = load i32, i32* @RowExclusiveLock, align 4
  %46 = call i32 @tablespace_scan_internal(i32 %41, i32* %42, i32 %43, i32 %44, i32* null, %struct.TYPE_3__* %6, i32 0, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (...) @CommandCounterIncrement()
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @tablespace_scan_internal(i32, i32*, i32, i32, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
