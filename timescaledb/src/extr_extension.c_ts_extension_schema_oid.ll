; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_schema_oid.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension.c_ts_extension_schema_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@ExtensionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_extension_extname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@EXTENSION_NAME = common dso_local global i32 0, align 4
@ExtensionNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_extension_extnamespace = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"extension schema not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ts_extension_schema_oid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 1, i32* %6, align 4
  %8 = load i64, i64* @InvalidOid, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* @ExtensionRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @heap_open(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_extension_extname, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_NAMEEQ, align 4
  %16 = load i32, i32* @namein, align 4
  %17 = load i32, i32* @EXTENSION_NAME, align 4
  %18 = call i32 @CStringGetDatum(i32 %17)
  %19 = call i32 @DirectFunctionCall1(i32 %16, i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ExtensionNameIndexId, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %24 = call i32 @systable_beginscan(i32 %21, i32 %22, i32 1, i32* null, i32 1, i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @systable_getnext(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @HeapTupleIsValid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %0
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @Anum_pg_extension_extnamespace, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @RelationGetDescr(i32 %33)
  %35 = call i32 @heap_getattr(i32 %31, i32 %32, i32 %34, i32* %6)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @DatumGetObjectId(i32 %39)
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %30
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @systable_endscan(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @AccessShareLock, align 4
  %47 = call i32 @heap_close(i32 %45, i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @InvalidOid, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 @elog(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
