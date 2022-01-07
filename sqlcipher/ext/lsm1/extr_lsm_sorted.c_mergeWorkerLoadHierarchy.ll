; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerLoadHierarchy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerLoadHierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_15__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @mergeWorkerLoadHierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerLoadHierarchy(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %154

30:                                               ; preds = %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %154

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %6, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %7, align 8
  store i32** null, i32*** %8, align 8
  store i32 0, i32* %9, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %107, %35
  store i32* null, i32** %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @lsmFsDbPageGet(i32* %51, %struct.TYPE_13__* %52, i32 %53, i32** %11)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @LSM_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %108

59:                                               ; preds = %50
  %60 = load i32*, i32** %11, align 8
  %61 = call i32* @fsPageData(i32* %60, i32* %13)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @pageGetFlags(i32* %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %59
  %70 = load i32*, i32** %7, align 8
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @lsmRealloc(i32* %70, i32** %71, i32 %76)
  %78 = inttoptr i64 %77 to i32**
  store i32** %78, i32*** %15, align 8
  %79 = load i32**, i32*** %15, align 8
  %80 = icmp eq i32** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @LSM_NOMEM_BKPT, align 4
  store i32 %82, i32* %3, align 4
  br label %108

83:                                               ; preds = %69
  %84 = load i32**, i32*** %15, align 8
  store i32** %84, i32*** %8, align 8
  %85 = load i32**, i32*** %8, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32**, i32*** %8, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memmove(i32** %86, i32** %88, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = load i32**, i32*** %8, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  store i32* %96, i32** %98, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @pageGetPtr(i32* %99, i32 %100)
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %106

103:                                              ; preds = %59
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @lsmFsPageRelease(i32* %104)
  br label %108

106:                                              ; preds = %83
  br label %107

107:                                              ; preds = %106
  br i1 true, label %50, label %108

108:                                              ; preds = %107, %103, %81, %58
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @LSM_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32**, i32*** %8, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32* @fsPageData(i32* %115, i32* %17)
  store i32* %116, i32** %16, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i64 @pageGetPtr(i32* %117, i32 %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load i32**, i32*** %8, align 8
  %129 = ptrtoint i32** %128 to i64
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = call i32 @mergeWorkerMoveHierarchy(%struct.TYPE_14__* %132, i32 0)
  store i32 %133, i32* %3, align 4
  br label %153

134:                                              ; preds = %108
  store i32 0, i32* %18, align 4
  br label %135

135:                                              ; preds = %146, %134
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i32**, i32*** %8, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @lsmFsPageRelease(i32* %144)
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %18, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %18, align 4
  br label %135

149:                                              ; preds = %135
  %150 = load i32*, i32** %7, align 8
  %151 = load i32**, i32*** %8, align 8
  %152 = call i32 @lsmFree(i32* %150, i32** %151)
  br label %153

153:                                              ; preds = %149, %112
  br label %154

154:                                              ; preds = %153, %30, %1
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @lsmFsDbPageGet(i32*, %struct.TYPE_13__*, i32, i32**) #1

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i64 @lsmRealloc(i32*, i32**, i32) #1

declare dso_local i32 @memmove(i32**, i32**, i32) #1

declare dso_local i64 @pageGetPtr(i32*, i32) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @mergeWorkerMoveHierarchy(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lsmFree(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
