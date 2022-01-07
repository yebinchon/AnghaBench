; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorSeek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_tree.c_lsmTreeCursorSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_15__**, %struct.TYPE_14__*, i32* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_CONTIGUOUS = common dso_local global i32 0, align 4
@TKV_LOADKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmTreeCursorSeek(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %21 = load i32, i32* @LSM_OK, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @treeCursorRestore(%struct.TYPE_17__* %28, i32 0)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @LSM_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ true, %35 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32*, i32** %8, align 8
  store i32 -1, i32* %48, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  br label %225

51:                                               ; preds = %4
  %52 = bitcast %struct.TYPE_18__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 8, i1 false)
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %53

53:                                               ; preds = %204, %51
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %217

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @treeShmptrUnsafe(i32* %57, i64 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %66, i64 %68
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %69, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @treeShmptrUnsafe(i32* %70, i64 %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %19, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LSM_CONTIGUOUS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %56
  %85 = load i32*, i32** %10, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @TKV_LOADKEY, align 4
  %92 = call %struct.TYPE_16__* @treeShmkey(i32* %85, i64 %90, i32 %91, %struct.TYPE_18__* %13, i32* %9)
  store %struct.TYPE_16__* %92, %struct.TYPE_16__** %19, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @LSM_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %217

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %56
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 1
  %101 = bitcast %struct.TYPE_16__* %100 to i8*
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @treeKeycmp(i8* %101, i32 %104, i8* %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 1, i32* %116, align 4
  br label %217

117:                                              ; preds = %98
  %118 = load i32, i32* %14, align 4
  %119 = icmp sgt i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 0, i32 2
  store i32 %121, i32* %17, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %18, align 8
  %129 = load i64, i64* %18, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %117
  %132 = load i32*, i32** %10, align 8
  %133 = load i64, i64* %18, align 8
  %134 = call i64 @treeShmptrUnsafe(i32* %132, i64 %133)
  %135 = inttoptr i64 %134 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %135, %struct.TYPE_16__** %19, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @LSM_CONTIGUOUS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %131
  %143 = load i32*, i32** %10, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load i32, i32* @TKV_LOADKEY, align 4
  %146 = call %struct.TYPE_16__* @treeShmkey(i32* %143, i64 %144, i32 %145, %struct.TYPE_18__* %13, i32* %9)
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %19, align 8
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %217

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %131
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i64 1
  %154 = bitcast %struct.TYPE_16__* %153 to i8*
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @treeKeycmp(i8* %154, i32 %157, i8* %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %151
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %217

174:                                              ; preds = %151
  br label %176

175:                                              ; preds = %117
  store i32 1, i32* %17, align 4
  br label %176

176:                                              ; preds = %175, %174
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %178, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %176
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = add nsw i32 %190, %193
  %195 = call i64 @getChildPtr(%struct.TYPE_15__* %186, i32 %189, i32 %194)
  store i64 %195, i64* %12, align 8
  br label %197

196:                                              ; preds = %176
  store i64 0, i64* %12, align 8
  br label %197

197:                                              ; preds = %196, %185
  %198 = load i32, i32* %17, align 4
  %199 = load i64, i64* %12, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* %14, align 4
  %203 = icmp slt i32 %202, 0
  br label %204

204:                                              ; preds = %201, %197
  %205 = phi i1 [ false, %197 ], [ %203, %201 ]
  %206 = zext i1 %205 to i32
  %207 = add nsw i32 %198, %206
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %53

217:                                              ; preds = %163, %149, %110, %96, %53
  %218 = load i32, i32* %14, align 4
  %219 = load i32*, i32** %8, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %15, align 4
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @tblobFree(i32* %223, %struct.TYPE_18__* %13)
  br label %225

225:                                              ; preds = %217, %44
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @LSM_OK, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %256

229:                                              ; preds = %225
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %231 = call i64 @lsmTreeCursorValid(%struct.TYPE_17__* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %256

233:                                              ; preds = %229
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @treeCsrCompare(%struct.TYPE_17__* %234, i8* %235, i32 %236, i32* %9)
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @LSM_OK, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %252, label %241

241:                                              ; preds = %233
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %20, align 4
  %250 = xor i32 %248, %249
  %251 = icmp sgt i32 %250, 0
  br label %252

252:                                              ; preds = %246, %241, %233
  %253 = phi i1 [ true, %241 ], [ true, %233 ], [ %251, %246 ]
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  br label %256

256:                                              ; preds = %252, %229, %225
  %257 = load i32, i32* %9, align 4
  ret i32 %257
}

declare dso_local i32 @treeCursorRestore(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @treeShmptrUnsafe(i32*, i64) #1

declare dso_local %struct.TYPE_16__* @treeShmkey(i32*, i64, i32, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @treeKeycmp(i8*, i32, i8*, i32) #1

declare dso_local i64 @getChildPtr(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @tblobFree(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @lsmTreeCursorValid(%struct.TYPE_17__*) #1

declare dso_local i32 @treeCsrCompare(%struct.TYPE_17__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
