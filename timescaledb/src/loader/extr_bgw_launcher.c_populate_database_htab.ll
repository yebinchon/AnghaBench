; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_populate_database_htab.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_populate_database_htab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @populate_database_htab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_database_htab(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32 (...) @StartTransactionCommand()
  %8 = call i32 (...) @GetTransactionSnapshot()
  %9 = load i32, i32* @DatabaseRelationId, align 4
  %10 = load i32, i32* @AccessShareLock, align 4
  %11 = call i32 @heap_open(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @heap_beginscan_catalog(i32 %12, i32 0, i32* null)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %34, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ForwardScanDirection, align 4
  %17 = call i32 @heap_getnext(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = call i64 @HeapTupleIsValid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GETSTRUCT(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %6, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %20
  br label %14

35:                                               ; preds = %29
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HeapTupleGetOid(i32 %37)
  %39 = call i32 @db_hash_entry_create_if_not_exists(i32* %36, i32 %38)
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @heap_endscan(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @AccessShareLock, align 4
  %45 = call i32 @heap_close(i32 %43, i32 %44)
  %46 = call i32 (...) @CommitTransactionCommand()
  ret void
}

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @heap_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_getnext(i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @db_hash_entry_create_if_not_exists(i32*, i32) #1

declare dso_local i32 @HeapTupleGetOid(i32) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
