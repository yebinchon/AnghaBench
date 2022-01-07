; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_version.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_extension_utils.c_extension_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExtensionRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_extension_extname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@EXTENSION_NAME = common dso_local global i32 0, align 4
@ExtensionNameIndexId = common dso_local global i32 0, align 4
@Anum_pg_extension_extversion = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"extension not found while getting version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @extension_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extension_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @ExtensionRelationId, align 4
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32 @heap_open(i32 %8, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %12 = load i32, i32* @Anum_pg_extension_extname, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_NAMEEQ, align 4
  %15 = load i32, i32* @namein, align 4
  %16 = load i32, i32* @EXTENSION_NAME, align 4
  %17 = call i32 @CStringGetDatum(i32 %16)
  %18 = call i32 @DirectFunctionCall1(i32 %15, i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ExtensionNameIndexId, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %23 = call i32 @systable_beginscan(i32 %20, i32 %21, i32 1, i32* null, i32 1, i32* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @systable_getnext(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @Anum_pg_extension_extversion, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @RelationGetDescr(i32 %32)
  %34 = call i32 @heap_getattr(i32 %30, i32 %31, i32 %33, i32* %6)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @TextDatumGetCString(i32 %38)
  %40 = call i8* @pstrdup(i32 %39)
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @systable_endscan(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @AccessShareLock, align 4
  %47 = call i32 @heap_close(i32 %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 @elog(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i8*, i8** %7, align 8
  ret i8* %54
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

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @TextDatumGetCString(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
