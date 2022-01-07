; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_truncate_relation.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_truncate_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"found a FK into a chunk while truncating\00", align 1
@RecentXmin = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RELPERSISTENCE_UNLOGGED = common dso_local global i64 0, align 8
@REINDEX_REL_PROCESS_TOAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @truncate_relation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_relation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @list_make1_oid(i32 %7)
  %9 = call i32* @heap_truncate_find_FKs(i32 %8)
  store i32* %9, i32** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @AccessExclusiveLock, align 4
  %12 = call %struct.TYPE_8__* @relation_open(i32 %10, i32 %11)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** @NIL, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ERROR, align 4
  %18 = call i32 @elog(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 @CheckTableForSerializableConflictIn(%struct.TYPE_8__* %20)
  %22 = call i32 (...) @GetOldestMultiXactId()
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @RecentXmin, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @RelationSetNewRelfilenode(%struct.TYPE_8__* %23, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load i32, i32* @NoLock, align 4
  %39 = call i32 @heap_close(%struct.TYPE_8__* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @OidIsValid(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %19
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @AccessExclusiveLock, align 4
  %46 = call %struct.TYPE_8__* @relation_open(i32 %44, i32 %45)
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @RecentXmin, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @RelationSetNewRelfilenode(%struct.TYPE_8__* %47, i64 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RELPERSISTENCE_UNLOGGED, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = load i32, i32* @NoLock, align 4
  %67 = call i32 @heap_close(%struct.TYPE_8__* %65, i32 %66)
  br label %68

68:                                               ; preds = %43, %19
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @REINDEX_REL_PROCESS_TOAST, align 4
  %71 = call i32 @reindex_relation(i32 %69, i32 %70, i32 0)
  ret void
}

declare dso_local i32* @heap_truncate_find_FKs(i32) #1

declare dso_local i32 @list_make1_oid(i32) #1

declare dso_local %struct.TYPE_8__* @relation_open(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @CheckTableForSerializableConflictIn(%struct.TYPE_8__*) #1

declare dso_local i32 @GetOldestMultiXactId(...) #1

declare dso_local i32 @RelationSetNewRelfilenode(%struct.TYPE_8__*, i64, i32, i32) #1

declare dso_local i32 @heap_close(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @reindex_relation(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
