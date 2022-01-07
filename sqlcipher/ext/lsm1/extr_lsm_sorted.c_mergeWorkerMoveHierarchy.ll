; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerMoveHierarchy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerMoveHierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32** }
%struct.TYPE_6__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @mergeWorkerMoveHierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerMoveHierarchy(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @LSM_OK, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %128, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LSM_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %131

40:                                               ; preds = %38
  store i32* null, i32** %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lsmFsSortedAppend(i32 %43, i32 %46, i32 %49, i32 1, i32** %10)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LSM_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @LSM_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %127

59:                                               ; preds = %40
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @fsPageData(i32* %60, i32* %12)
  store i32* %61, i32** %11, align 8
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32* @fsPageData(i32* %66, i32* %14)
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %73, %74
  br label %76

76:                                               ; preds = %71, %59
  %77 = phi i1 [ true, %59 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %11, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @memcpy(i32* %84, i32* %85, i32 %86)
  br label %115

88:                                               ; preds = %76
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @pageGetNRec(i32* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @SEGMENT_EOF(i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @SEGMENT_EOF(i32 %95, i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sub nsw i32 %100, 4
  %102 = call i32 @memcpy(i32* %98, i32* %99, i32 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sub nsw i32 %111, %112
  %114 = call i32 @memcpy(i32* %106, i32* %110, i32 %113)
  br label %115

115:                                              ; preds = %88, %83
  %116 = load i32**, i32*** %8, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @lsmFsPageRelease(i32* %120)
  %122 = load i32*, i32** %10, align 8
  %123 = load i32**, i32*** %8, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  store i32* %122, i32** %126, align 8
  br label %127

127:                                              ; preds = %115, %40
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %30

131:                                              ; preds = %38
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @lsmFsSortedAppend(i32, i32, i32, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32 @SEGMENT_EOF(i32, i32) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
