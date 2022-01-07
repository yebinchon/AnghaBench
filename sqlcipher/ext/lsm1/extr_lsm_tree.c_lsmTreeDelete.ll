; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeDelete.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i64*, %struct.TYPE_36__, %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_34__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@TKV_LOADKEY = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmTreeDelete(%struct.TYPE_32__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_36__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_35__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @LSM_OK, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %13, align 8
  %27 = bitcast %struct.TYPE_36__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 8, i1 false)
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @treeKeycmp(i8* %28, i32 %29, i8* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %37 = call i32 @assert_delete_ranges_match(%struct.TYPE_32__* %36)
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %176, %5
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @LSM_OK, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %47, label %48, label %180

48:                                               ; preds = %46
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %50 = call i32 @treeCountEntries(%struct.TYPE_32__* %49)
  store i32 %50, i32* %19, align 4
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %52 = call i32 @treeCursorInit(%struct.TYPE_32__* %51, i32 0, %struct.TYPE_35__* %16)
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @lsmTreeCursorSeek(%struct.TYPE_35__* %16, i8* %53, i32 %54, i32* %15)
  %56 = load i32, i32* %15, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = call i64 @lsmTreeCursorValid(%struct.TYPE_35__* %16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @lsmTreeCursorNext(%struct.TYPE_35__* %16)
  br label %63

63:                                               ; preds = %61, %58, %48
  store i32 1, i32* %12, align 4
  %64 = call i64 @lsmTreeCursorValid(%struct.TYPE_35__* %16)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = call i32 @lsmTreeCursorKey(%struct.TYPE_35__* %16, i32 0, i8** %17, i32* %18)
  %68 = load i8*, i8** %17, align 8
  %69 = load i32, i32* %18, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @treeKeycmp(i8* %68, i32 %69, i8* %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %74, %66
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %164

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %89 = call i32 @treeDeleteEntry(%struct.TYPE_32__* %88, %struct.TYPE_35__* %16, i32 0)
  store i32 %89, i32* %11, align 4
  br label %163

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %22, align 4
  %93 = call i32 @lsmTreeCursorNext(%struct.TYPE_35__* %16)
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %95, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 3
  %104 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %104, i64 %107
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %111, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %20, align 4
  %121 = call i32 @lsmTreeCursorPrev(%struct.TYPE_35__* %16)
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @treeOverwriteKey(%struct.TYPE_32__* %122, %struct.TYPE_35__* %16, i32 %123, i32* %11)
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @TKV_LOADKEY, align 4
  %128 = call %struct.TYPE_34__* @treeShmkey(%struct.TYPE_32__* %125, i32 %126, i32 %127, %struct.TYPE_36__* %14, i32* %11)
  store %struct.TYPE_34__* %128, %struct.TYPE_34__** %21, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %130 = icmp ne %struct.TYPE_34__* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %90
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %133 = call i8* @TKV_KEY(%struct.TYPE_34__* %132)
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @lsmTreeCursorSeek(%struct.TYPE_35__* %16, i8* %133, i32 %136, i32* %15)
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %131, %90
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @LSM_OK, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %22, align 4
  %149 = icmp eq i32 %147, %148
  br label %150

150:                                              ; preds = %145, %142
  %151 = phi i1 [ false, %142 ], [ %149, %145 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = call i32 @lsmTreeCursorNext(%struct.TYPE_35__* %16)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @LSM_OK, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %160 = call i32 @treeDeleteEntry(%struct.TYPE_32__* %159, %struct.TYPE_35__* %16, i32 0)
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %150
  br label %162

162:                                              ; preds = %161, %138
  br label %163

163:                                              ; preds = %162, %87
  br label %164

164:                                              ; preds = %163, %76
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %16, i32 0, i32 2
  %167 = call i32 @tblobFree(%struct.TYPE_32__* %165, %struct.TYPE_36__* %166)
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %172 = call i32 @treeCountEntries(%struct.TYPE_32__* %171)
  %173 = load i32, i32* %19, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %172, %174
  br label %176

176:                                              ; preds = %170, %164
  %177 = phi i1 [ true, %164 ], [ %175, %170 ]
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  br label %39

180:                                              ; preds = %46
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @LSM_OK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %186 = load i32, i32* @LSM_START_DELETE, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @treeInsertEntry(%struct.TYPE_32__* %185, i32 %186, i8* %187, i32 %188, i32 0, i32 -1)
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %184, %180
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @LSM_OK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %196 = load i32, i32* @LSM_END_DELETE, align 4
  %197 = load i8*, i8** %9, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @treeInsertEntry(%struct.TYPE_32__* %195, i32 %196, i8* %197, i32 %198, i32 0, i32 -1)
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %194, %190
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %202 = call i32 @tblobFree(%struct.TYPE_32__* %201, %struct.TYPE_36__* %14)
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %204 = call i32 @assert_delete_ranges_match(%struct.TYPE_32__* %203)
  %205 = call i32 @assert(i32 %204)
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @treeKeycmp(i8*, i32, i8*, i32) #2

declare dso_local i32 @assert_delete_ranges_match(%struct.TYPE_32__*) #2

declare dso_local i32 @treeCountEntries(%struct.TYPE_32__*) #2

declare dso_local i32 @treeCursorInit(%struct.TYPE_32__*, i32, %struct.TYPE_35__*) #2

declare dso_local i32 @lsmTreeCursorSeek(%struct.TYPE_35__*, i8*, i32, i32*) #2

declare dso_local i64 @lsmTreeCursorValid(%struct.TYPE_35__*) #2

declare dso_local i32 @lsmTreeCursorNext(%struct.TYPE_35__*) #2

declare dso_local i32 @lsmTreeCursorKey(%struct.TYPE_35__*, i32, i8**, i32*) #2

declare dso_local i32 @treeDeleteEntry(%struct.TYPE_32__*, %struct.TYPE_35__*, i32) #2

declare dso_local i32 @lsmTreeCursorPrev(%struct.TYPE_35__*) #2

declare dso_local i32 @treeOverwriteKey(%struct.TYPE_32__*, %struct.TYPE_35__*, i32, i32*) #2

declare dso_local %struct.TYPE_34__* @treeShmkey(%struct.TYPE_32__*, i32, i32, %struct.TYPE_36__*, i32*) #2

declare dso_local i8* @TKV_KEY(%struct.TYPE_34__*) #2

declare dso_local i32 @tblobFree(%struct.TYPE_32__*, %struct.TYPE_36__*) #2

declare dso_local i32 @treeInsertEntry(%struct.TYPE_32__*, i32, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
