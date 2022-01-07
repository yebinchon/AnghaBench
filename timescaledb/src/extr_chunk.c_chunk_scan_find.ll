; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_scan_find.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_chunk_scan_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@chunk_tuple_found = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"chunk not found\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"unexpected number of chunks found: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32*, i32, i32, i32, i32)* @chunk_scan_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @chunk_scan_find(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.TYPE_8__* @MemoryContextAllocZero(i32 %15, i32 12)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @chunk_tuple_found, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %22 = load i32, i32* @ForwardScanDirection, align 4
  %23 = load i32, i32* @AccessShareLock, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @chunk_scan_internal(i32 %17, i32* %18, i32 %19, i32 %20, %struct.TYPE_8__* %21, i32 1, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  switch i32 %26, label %57 [
    i32 0, label %27
    i32 1, label %36
  ]

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 (i32, i8*, ...) @elog(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %35 = call i32 @pfree(%struct.TYPE_8__* %34)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  br label %61

36:                                               ; preds = %6
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ts_chunk_constraint_scan_by_chunk_id(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ts_hypercube_from_constraints(i32 %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %36
  br label %61

57:                                               ; preds = %6
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 (i32, i8*, ...) @elog(i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %56, %33
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  ret %struct.TYPE_8__* %62
}

declare dso_local %struct.TYPE_8__* @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @chunk_scan_internal(i32, i32*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @pfree(%struct.TYPE_8__*) #1

declare dso_local i32 @ts_chunk_constraint_scan_by_chunk_id(i32, i32, i32) #1

declare dso_local i32 @ts_hypercube_from_constraints(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
