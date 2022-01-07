; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_validate_constraints.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_hypertable_validate_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot have NO INHERIT constraints on hypertable \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Remove all NO INHERIT constraints from table \22%s\22 before making it a hypertable.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hypertable_validate_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hypertable_validate_constraints(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @ConstraintRelationId, align 4
  %9 = load i32, i32* @AccessShareLock, align 4
  %10 = call i32 @heap_open(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %5, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %19 = call i32 @systable_beginscan(i32 %17, i32 %18, i32 1, i32* null, i32 1, i32* %5)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %51, %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @systable_getnext(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = call i64 @HeapTupleIsValid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @GETSTRUCT(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %7, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @get_rel_name(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @get_rel_name(i32 %47)
  %49 = call i32 @errhint(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @ereport(i32 %41, i32 %49)
  br label %51

51:                                               ; preds = %40, %35, %25
  br label %20

52:                                               ; preds = %20
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @systable_endscan(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @AccessShareLock, align 4
  %57 = call i32 @heap_close(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
