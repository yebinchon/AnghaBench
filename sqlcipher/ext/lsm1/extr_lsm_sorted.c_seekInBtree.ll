; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInBtree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i32, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i8*, i32, i32*, i32**)* @seekInBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekInBtree(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2, i8* %3, i32 %4, i32* %5, i32** %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  store i32 0, i32* %15, align 4
  store i32* null, i32** %18, align 8
  %33 = bitcast %struct.TYPE_14__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 24, i1 false)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %154, %7
  store i32* null, i32** %20, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %20, align 8
  br label %52

52:                                               ; preds = %41, %38
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @lsmFsDbPageGet(i32 %57, %struct.TYPE_12__* %58, i32 %59, i32** %18)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @LSM_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %52
  %65 = load i32*, i32** %18, align 8
  %66 = icmp eq i32* %65, null
  br label %67

67:                                               ; preds = %64, %52
  %68 = phi i1 [ true, %52 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @LSM_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %153

74:                                               ; preds = %67
  %75 = load i32*, i32** %18, align 8
  %76 = call i32* @fsPageData(i32* %75, i32* %22)
  store i32* %76, i32** %21, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @pageGetFlags(i32* %77, i32 %78)
  store i32 %79, i32* %26, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %158

85:                                               ; preds = %74
  %86 = load i32*, i32** %21, align 8
  %87 = load i32, i32* %22, align 4
  %88 = call i64 @pageGetPtr(i32* %86, i32 %87)
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @pageGetNRec(i32* %90, i32 %91)
  store i32 %92, i32* %25, align 4
  store i32 0, i32* %23, align 4
  %93 = load i32, i32* %25, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %24, align 4
  br label %95

95:                                               ; preds = %149, %85
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %95
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %24, align 4
  %102 = add nsw i32 %100, %101
  %103 = sdiv i32 %102, 2
  store i32 %103, i32* %27, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %27, align 4
  %107 = call i32 @pageGetBtreeKey(%struct.TYPE_12__* %104, i32* %105, i32 %106, i32* %31, i32* %30, i8** %28, i32* %29, %struct.TYPE_14__* %19)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* @LSM_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %150

112:                                              ; preds = %99
  %113 = load i32*, i32** %20, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %112
  %116 = load i8*, i8** %28, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp eq i8* %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32*, i32** %18, align 8
  %122 = load i32, i32* %27, align 4
  %123 = call i32 @pageGetBtreeRef(i32* %121, i32 %122)
  %124 = load i32*, i32** %20, align 8
  store i32 %123, i32* %124, align 4
  store i32* null, i32** %20, align 8
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %120, %115, %112
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %30, align 4
  %137 = load i8*, i8** %28, align 8
  %138 = load i32, i32* %29, align 4
  %139 = call i32 @sortedKeyCompare(i32 %132, i32 %133, i8* %134, i32 %135, i32 %136, i8* %137, i32 %138)
  store i32 %139, i32* %32, align 4
  %140 = load i32, i32* %32, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %127
  %143 = load i32, i32* %31, align 4
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %27, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %24, align 4
  br label %149

146:                                              ; preds = %127
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %23, align 4
  br label %149

149:                                              ; preds = %146, %142
  br label %95

150:                                              ; preds = %111, %95
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @lsmFsPageRelease(i32* %151)
  store i32* null, i32** %18, align 8
  br label %153

153:                                              ; preds = %150, %67
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @LSM_OK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %38, label %158

158:                                              ; preds = %154, %84
  %159 = call i32 @sortedBlobFree(%struct.TYPE_14__* %19)
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @LSM_OK, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32*, i32** %18, align 8
  %165 = icmp ne i32* %164, null
  %166 = zext i1 %165 to i32
  %167 = icmp eq i32 %163, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i32**, i32*** %14, align 8
  %171 = icmp ne i32** %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %158
  %173 = load i32*, i32** %18, align 8
  %174 = load i32**, i32*** %14, align 8
  store i32* %173, i32** %174, align 8
  br label %178

175:                                              ; preds = %158
  %176 = load i32*, i32** %18, align 8
  %177 = call i32 @lsmFsPageRelease(i32* %176)
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %16, align 4
  ret i32 %179
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lsmFsDbPageGet(i32, %struct.TYPE_12__*, i32, i32**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @fsPageData(i32*, i32*) #2

declare dso_local i32 @pageGetFlags(i32*, i32) #2

declare dso_local i64 @pageGetPtr(i32*, i32) #2

declare dso_local i32 @pageGetNRec(i32*, i32) #2

declare dso_local i32 @pageGetBtreeKey(%struct.TYPE_12__*, i32*, i32, i32*, i32*, i8**, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @pageGetBtreeRef(i32*, i32) #2

declare dso_local i32 @sortedKeyCompare(i32, i32, i8*, i32, i32, i8*, i32) #2

declare dso_local i32 @lsmFsPageRelease(i32*) #2

declare dso_local i32 @sortedBlobFree(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
