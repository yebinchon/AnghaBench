; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerNextPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerNextPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @mergeWorkerNextPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerNextPage(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @LSM_OK, align 4
  store i32 %10, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = call i32 @lsmFsSortedAppend(i32 %16, i32 %19, %struct.TYPE_14__* %22, i32 0, i32** %6)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %34, %26, %2
  %43 = phi i1 [ true, %26 ], [ true, %2 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @LSM_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i32 @mergeWorkerPersistAndRelease(%struct.TYPE_13__* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @fsPageData(i32* %61, i32* %9)
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @SEGMENT_NRECORD_OFFSET(i32 %64)
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @lsmPutU16(i32* %66, i32 0)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @SEGMENT_FLAGS_OFFSET(i32 %69)
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @lsmPutU16(i32* %71, i32 0)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @SEGMENT_POINTER_OFFSET(i32 %74)
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @lsmPutU64(i32* %76, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %49, %42
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @lsmFsSortedAppend(i32, i32, %struct.TYPE_14__*, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mergeWorkerPersistAndRelease(%struct.TYPE_13__*) #1

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @lsmPutU16(i32*, i32) #1

declare dso_local i64 @SEGMENT_NRECORD_OFFSET(i32) #1

declare dso_local i64 @SEGMENT_FLAGS_OFFSET(i32) #1

declare dso_local i32 @lsmPutU64(i32*, i32) #1

declare dso_local i64 @SEGMENT_POINTER_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
