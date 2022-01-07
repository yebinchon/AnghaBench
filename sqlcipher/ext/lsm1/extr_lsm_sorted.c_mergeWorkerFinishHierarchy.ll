; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerFinishHierarchy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerFinishHierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i32** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @mergeWorkerFinishHierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerFinishHierarchy(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load i32, i32* @LSM_OK, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %52, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LSM_OK, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i1 [ false, %16 ], [ %26, %23 ]
  br i1 %28, label %29, label %55

29:                                               ; preds = %27
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @fsPageData(i32* %38, i32* %7)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @SEGMENT_POINTER_OFFSET(i32 %41)
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @lsmPutU64(i32* %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @lsmFsPagePersist(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @lsmFsPageNumber(i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @lsmFsPageRelease(i32* %50)
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %16

55:                                               ; preds = %27
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = call i32 @lsmFree(i32 %72, i32** %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  store i32** null, i32*** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %61, %55
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @lsmPutU64(i32*, i32) #1

declare dso_local i64 @SEGMENT_POINTER_OFFSET(i32) #1

declare dso_local i32 @lsmFsPagePersist(i32*) #1

declare dso_local i32 @lsmFsPageNumber(i32*) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @lsmFree(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
