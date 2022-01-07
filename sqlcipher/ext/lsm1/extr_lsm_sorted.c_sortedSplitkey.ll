; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedSplitkey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedSplitkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i8*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_16__*, i32*)* @sortedSplitkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sortedSplitkey(%struct.TYPE_13__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call i32* @sortedSplitkeySegment(%struct.TYPE_16__* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @LSM_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lsmFsDbPageGet(i32 %35, i32* %36, i32 %40, i32** %8)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %32, %3
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @LSM_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 32, i1 false)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @lsmFsPageData(i32* %48, i32* %15)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @pageGetFlags(i32* %50, i32 %51)
  %53 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %46
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pageGetBtreeKey(i32* %57, i32* %58, i32 %62, i32* %18, i32* %12, i8** %16, i32* %17, %struct.TYPE_15__* %13)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @LSM_OK, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = icmp ne i8* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i32 @sortedBlobSet(i32* %73, %struct.TYPE_15__* %13, i8* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %67, %56
  br label %87

78:                                               ; preds = %46
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pageGetKeyCopy(i32* %79, i32* %80, i32* %81, i32 %85, i32* %12, %struct.TYPE_15__* %13)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %78, %77
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @lsmFsPageRelease(i32* %99)
  br label %101

101:                                              ; preds = %87, %42
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  ret void
}

declare dso_local i32* @sortedSplitkeySegment(%struct.TYPE_16__*) #1

declare dso_local i32 @lsmFsDbPageGet(i32, i32*, i32, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @lsmFsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i32 @pageGetBtreeKey(i32*, i32*, i32, i32*, i32*, i8**, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @sortedBlobSet(i32*, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @pageGetKeyCopy(i32*, i32*, i32*, i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
