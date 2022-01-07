; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_index_chunk_multitransaction.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_index_chunk_multitransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ShareLock = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @process_index_chunk_multitransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_index_chunk_multitransaction(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @Assert(i32 %17)
  %19 = call i32 (...) @StartTransactionCommand()
  %20 = call i32 (...) @GetTransactionSnapshot()
  %21 = call i32 @PushActiveSnapshot(i32 %20)
  %22 = call i32 (...) @ts_catalog_database_info_get()
  %23 = call i32 @ts_catalog_database_info_become_owner(i32 %22, i32* %8)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ShareLock, align 4
  %26 = call i32 @relation_open(i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AccessShareLock, align 4
  %32 = call i32 @relation_open(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.TYPE_11__* @ts_chunk_get_by_relid(i32 %33, i32 0, i32 1)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %9, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @RelationGetDescr(i32 %43)
  %45 = call i64 @chunk_index_columns_changed(i32 %38, i32 %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @ts_adjust_indexinfo_attnos(i32 %51, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %3
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ts_chunk_index_create_from_adjusted_index_info(i32 %59, i32 %60, i32 %64, i32 %65, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @NoLock, align 4
  %73 = call i32 @relation_close(i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @NoLock, align 4
  %76 = call i32 @relation_close(i32 %74, i32 %75)
  %77 = call i32 @ts_catalog_restore_user(i32* %8)
  %78 = call i32 (...) @PopActiveSnapshot()
  %79 = call i32 (...) @CommitTransactionCommand()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @ts_catalog_database_info_become_owner(i32, i32*) #1

declare dso_local i32 @ts_catalog_database_info_get(...) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_11__* @ts_chunk_get_by_relid(i32, i32, i32) #1

declare dso_local i64 @chunk_index_columns_changed(i32, i32, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ts_adjust_indexinfo_attnos(i32, i32, i32, i32) #1

declare dso_local i32 @ts_chunk_index_create_from_adjusted_index_info(i32, i32, i32, i32, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32 @ts_catalog_restore_user(i32*) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
