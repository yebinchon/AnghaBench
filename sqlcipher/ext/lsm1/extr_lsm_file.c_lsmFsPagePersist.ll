; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsPagePersist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_lsmFsPagePersist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, %struct.TYPE_18__*, i32*, i32, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__*, i32, i32, i64, i32, %struct.TYPE_18__*, %struct.TYPE_18__**, i32, i32*, i64 }

@LSM_OK = common dso_local global i32 0, align 4
@PAGE_DIRTY = common dso_local global i32 0, align 4
@PAGE_FREE = common dso_local global i32 0, align 4
@PAGE_HASPREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmFsPagePersist(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %460

20:                                               ; preds = %1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_DIRTY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %460

27:                                               ; preds = %20
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %5, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %133

35:                                               ; preds = %27
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 9
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %45, %40, %35
  %51 = phi i1 [ false, %40 ], [ false, %35 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = call i32 @fsCompressIntoBuffer(%struct.TYPE_19__* %54, %struct.TYPE_18__* %55)
  store i32 %56, i32* %4, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @putRecordSize(i32* %57, i32 %60, i32 0)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 9
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %67 = call i32 @fsAppendData(%struct.TYPE_19__* %62, %struct.TYPE_17__* %65, i32* %66, i32 12, i32* %4)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 10
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @fsAppendData(%struct.TYPE_19__* %70, %struct.TYPE_17__* %73, i32* %76, i32 %79, i32* %4)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 9
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %86 = call i32 @fsAppendData(%struct.TYPE_19__* %81, %struct.TYPE_17__* %84, i32* %85, i32 12, i32* %4)
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @fsHashKey(i32 %89, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %96, i64 %98
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 8
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %102, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %106, i64 %108
  store %struct.TYPE_18__* %103, %struct.TYPE_18__** %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add i64 24, %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 9
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, %114
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load i32, i32* @PAGE_DIRTY, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %459

133:                                              ; preds = %27
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %322

138:                                              ; preds = %133
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 9
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PAGE_FREE, align 4
  %149 = and i32 %147, %148
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @PAGE_HASPREV, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 4
  %166 = icmp eq i32 %161, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 9
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = call i32 @fsAppendPage(%struct.TYPE_19__* %169, %struct.TYPE_17__* %172, i32* %174, i32* %9, i32* %10)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @LSM_OK, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %138
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %462

181:                                              ; preds = %138
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @PAGE_FREE, align 4
  %186 = and i32 %184, %185
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @fsHashKey(i32 %190, i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @fsRemoveHashEntry(%struct.TYPE_19__* %195, i32 %198)
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %202, i64 %204
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 8
  store %struct.TYPE_18__* %206, %struct.TYPE_18__** %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 8
  %212 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %211, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %212, i64 %214
  store %struct.TYPE_18__* %209, %struct.TYPE_18__** %215, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = icmp eq %struct.TYPE_18__* %218, null
  br i1 %219, label %230, label %220

220:                                              ; preds = %181
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %225, %228
  br label %230

230:                                              ; preds = %220, %181
  %231 = phi i1 [ true, %181 ], [ %229, %220 ]
  %232 = zext i1 %231 to i32
  %233 = call i32 @assert(i32 %232)
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %230
  %237 = load i32, i32* %10, align 4
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @assert(i32 %239)
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 6
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @memmove(i32* %244, i32* %247, i32 %250)
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @lsmPutU32(i32* %254, i32 %255)
  %257 = load i32, i32* @PAGE_HASPREV, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  store i32* %265, i32** %263, align 8
  br label %296

266:                                              ; preds = %230
  %267 = load i32, i32* %10, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  %270 = load i32, i32* %9, align 4
  %271 = icmp eq i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @assert(i32 %272)
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @lsmPutU32(i32* %281, i32 %282)
  br label %295

284:                                              ; preds = %266
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %12, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 4
  store i32 %291, i32* %289, align 4
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @lsmSortedExpandBtreePage(%struct.TYPE_18__* %292, i32 %293)
  br label %295

295:                                              ; preds = %284, %269
  br label %296

296:                                              ; preds = %295, %236
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 7
  store %struct.TYPE_18__** %302, %struct.TYPE_18__*** %8, align 8
  br label %303

303:                                              ; preds = %308, %296
  %304 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %304, align 8
  %306 = icmp ne %struct.TYPE_18__* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307
  %309 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 4
  %312 = bitcast i64* %311 to %struct.TYPE_18__**
  store %struct.TYPE_18__** %312, %struct.TYPE_18__*** %8, align 8
  br label %303

313:                                              ; preds = %303
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %315 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %314, %struct.TYPE_18__** %315, align 8
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp eq i64 %318, 0
  %320 = zext i1 %319 to i32
  %321 = call i32 @assert(i32 %320)
  br label %458

322:                                              ; preds = %133
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = mul i64 %326, %331
  store i64 %332, i64* %13, align 8
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @fsMmapPage(%struct.TYPE_19__* %333, i32 %336)
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %363

339:                                              ; preds = %322
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 6
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @PAGE_HASPREV, align 4
  %347 = and i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = sub i64 0, %348
  %350 = getelementptr inbounds i32, i32* %342, i64 %349
  store i32* %350, i32** %14, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 8
  %357 = load i64, i64* %13, align 8
  %358 = load i32*, i32** %14, align 8
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @lsmEnvWrite(i32 %353, i32 %356, i64 %357, i32* %358, i32 %361)
  store i32 %362, i32* %4, align 4
  br label %445

363:                                              ; preds = %322
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @PAGE_FREE, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %444

370:                                              ; preds = %363
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %372 = load i64, i64* %13, align 8
  %373 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = sext i32 %375 to i64
  %377 = add i64 %372, %376
  %378 = trunc i64 %377 to i32
  %379 = call i32 @fsGrowMapping(%struct.TYPE_19__* %371, i32 %378, i32* %4)
  %380 = load i32, i32* %4, align 4
  %381 = load i32, i32* @LSM_OK, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %443

383:                                              ; preds = %370
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 5
  %386 = load i64, i64* %385, align 8
  %387 = inttoptr i64 %386 to i32*
  %388 = load i64, i64* %13, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32* %389, i32** %15, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 6
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @PAGE_HASPREV, align 4
  %397 = and i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = sub i64 0, %398
  %400 = getelementptr inbounds i32, i32* %392, i64 %399
  store i32* %400, i32** %16, align 8
  %401 = load i32*, i32** %15, align 8
  %402 = load i32*, i32** %16, align 8
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @memcpy(i32* %401, i32* %402, i32 %405)
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %16, align 8
  %411 = call i32 @lsmFree(i32 %409, i32* %410)
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, -1
  store i32 %415, i32* %413, align 8
  %416 = load i32*, i32** %15, align 8
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @PAGE_HASPREV, align 4
  %421 = and i32 %419, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %416, i64 %422
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 6
  store i32* %423, i32** %425, align 8
  %426 = load i32, i32* @PAGE_FREE, align 4
  %427 = xor i32 %426, -1
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, %427
  store i32 %431, i32* %429, align 8
  %432 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %434 = call i32 @fsPageRemoveFromHash(%struct.TYPE_19__* %432, %struct.TYPE_18__* %433)
  %435 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %436, align 8
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 5
  store %struct.TYPE_18__* %437, %struct.TYPE_18__** %439, align 8
  %440 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 2
  store %struct.TYPE_18__* %440, %struct.TYPE_18__** %442, align 8
  br label %443

443:                                              ; preds = %383, %370
  br label %444

444:                                              ; preds = %443, %363
  br label %445

445:                                              ; preds = %444, %339
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %447 = call i32 @lsmFsFlushWaiting(%struct.TYPE_19__* %446, i32* %4)
  %448 = load i32, i32* @PAGE_DIRTY, align 4
  %449 = xor i32 %448, -1
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = and i32 %452, %449
  store i32 %453, i32* %451, align 8
  %454 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %455, align 4
  br label %458

458:                                              ; preds = %445, %313
  br label %459

459:                                              ; preds = %458, %50
  br label %460

460:                                              ; preds = %459, %20, %1
  %461 = load i32, i32* %4, align 4
  store i32 %461, i32* %2, align 4
  br label %462

462:                                              ; preds = %460, %179
  %463 = load i32, i32* %2, align 4
  ret i32 %463
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fsCompressIntoBuffer(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @putRecordSize(i32*, i32, i32) #1

declare dso_local i32 @fsAppendData(%struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32, i32*) #1

declare dso_local i32 @fsHashKey(i32, i32) #1

declare dso_local i32 @fsAppendPage(%struct.TYPE_19__*, %struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32 @fsRemoveHashEntry(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @lsmPutU32(i32*, i32) #1

declare dso_local i32 @lsmSortedExpandBtreePage(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @fsMmapPage(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @lsmEnvWrite(i32, i32, i64, i32*, i32) #1

declare dso_local i32 @fsGrowMapping(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lsmFree(i32, i32*) #1

declare dso_local i32 @fsPageRemoveFromHash(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @lsmFsFlushWaiting(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
