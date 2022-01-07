; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrSearchOversized.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrSearchOversized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i8*, i32, i8*, i32)* }
%struct.TYPE_8__ = type { i32, i32, i32*, i32, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@PGFTR_SKIP_NEXT_FLAG = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@PGFTR_SKIP_THIS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i8*, i32)* @segmentPtrSearchOversized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentPtrSearchOversized(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*, i32, i8*, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %24, align 8
  store i32 (i8*, i32, i8*, i32)* %25, i32 (i8*, i32, i8*, i32)** %11, align 8
  %26 = load i32, i32* @LSM_OK, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %122, %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @LSM_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PGFTR_SKIP_NEXT_FLAG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i1 [ false, %27 ], [ %37, %31 ]
  br i1 %39, label %40, label %126

40:                                               ; preds = %38
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = call i32* @pageGetKey(i32 %43, i32* %46, i64 %50, i32* %15, i32* %14, i32* %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32 (i8*, i32, i8*, i32)*, i32 (i8*, i32, i8*, i32)** %11, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)* %54, i32 %55, i32* %56, i32 %57, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %126

65:                                               ; preds = %40
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %17, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @lsmFsPageRef(i32* %69)
  br label %71

71:                                               ; preds = %65, %103
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = call i32 @lsmFsDbPageNext(i32 %74, i32* %75, i32 1, i32** %18)
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @lsmFsPageRelease(i32* %77)
  %79 = load i32*, i32** %18, align 8
  store i32* %79, i32** %17, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %104

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @LSM_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32*, i32** %17, align 8
  %90 = call i32* @lsmFsPageData(i32* %89, i32* %20)
  store i32* %90, i32** %19, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @pageGetFlags(i32* %91, i32 %92)
  %94 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %83
  %98 = load i32*, i32** %19, align 8
  %99 = load i32, i32* %20, align 4
  %100 = call i64 @pageGetNRec(i32* %98, i32 %99)
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %104

103:                                              ; preds = %97, %83
  br label %71

104:                                              ; preds = %102, %82
  %105 = load i32*, i32** %17, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %126

108:                                              ; preds = %104
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = call i32 @segmentPtrSetPage(%struct.TYPE_8__* %109, i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @LSM_OK, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PGFTR_SKIP_THIS_FLAG, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %115, %108
  %123 = phi i1 [ true, %108 ], [ %121, %115 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  br label %27

126:                                              ; preds = %107, %64, %38
  %127 = load i32, i32* %12, align 4
  ret i32 %127
}

declare dso_local i32* @pageGetKey(i32, i32*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @sortedKeyCompare(i32 (i8*, i32, i8*, i32)*, i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @lsmFsPageRef(i32*) #1

declare dso_local i32 @lsmFsDbPageNext(i32, i32*, i32, i32**) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @lsmFsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i64 @pageGetNRec(i32*, i32) #1

declare dso_local i32 @segmentPtrSetPage(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
