; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_delete_from_all.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_tablespace.c_tablespace_delete_from_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@Anum_tablespace_tablespace_name = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@INVALID_INDEXID = common dso_local global i32 0, align 4
@tablespace_tuple_delete = common dso_local global i32 0, align 4
@tablespace_tuple_owner_filter = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"tablespace \22%s\22 remains attached to %d hypertable(s) due to lack of permissions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tablespace_delete_from_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tablespace_delete_from_all(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %10 = call i32 (...) @ts_hypertable_cache_pin()
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %14 = call i32 (...) @ts_catalog_database_info_get()
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* @Anum_tablespace_tablespace_name, align 4
  %17 = load i32, i32* @BTEqualStrategyNumber, align 4
  %18 = load i32, i32* @F_NAMEEQ, align 4
  %19 = load i32, i32* @namein, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @CStringGetDatum(i8* %20)
  %22 = call i32 @DirectFunctionCall1(i32 %19, i32 %21)
  %23 = call i32 @ScanKeyInit(i32* %15, i32 %16, i32 %17, i32 %18, i32 %22)
  %24 = load i32, i32* @INVALID_INDEXID, align 4
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* @tablespace_tuple_delete, align 4
  %27 = load i32, i32* @tablespace_tuple_owner_filter, align 4
  %28 = load i32, i32* @RowExclusiveLock, align 4
  %29 = call i32 @tablespace_scan_internal(i32 %24, i32* %25, i32 1, i32 %26, i32 %27, %struct.TYPE_3__* %6, i32 0, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ts_cache_release(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 (...) @CommandCounterIncrement()
  br label %37

37:                                               ; preds = %35, %2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @NOTICE, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @ts_hypertable_cache_pin(...) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @tablespace_scan_internal(i32, i32*, i32, i32, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ts_cache_release(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
