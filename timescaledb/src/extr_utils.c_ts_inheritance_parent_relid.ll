; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_inheritance_parent_relid.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_utils.c_ts_inheritance_parent_relid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_inheritance_parent_relid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @InvalidOid, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @InheritsRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @heap_open(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @ScanKeyInit(i32* %5, i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %20 = call i32 @systable_beginscan(i32 %18, i32 %19, i32 1, i32* null, i32 1, i32* %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @systable_getnext(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @HeapTupleIsValid(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @GETSTRUCT(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @systable_endscan(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @AccessShareLock, align 4
  %37 = call i32 @heap_close(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
