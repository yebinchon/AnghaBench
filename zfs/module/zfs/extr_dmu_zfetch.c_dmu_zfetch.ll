; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_zfetch.c_dmu_zfetch.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_zfetch.c_dmu_zfetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }

@zfs_prefetch_disable = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i32 0, align 4
@zfetchstat_misses = common dso_local global i32 0, align 4
@zfetch_max_distance = common dso_local global i32 0, align 4
@zfetch_max_idistance = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@ARC_FLAG_PREDICTIVE_PREFETCH = common dso_local global i32 0, align 4
@zfetchstat_hits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_zfetch(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %22, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %23, align 8
  %36 = load i64, i64* @zfs_prefetch_disable, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  br label %315

39:                                               ; preds = %5
  %40 = load i32*, i32** %23, align 8
  %41 = call i32 @spa_indirect_vdevs_loaded(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %315

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %315

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* @RW_READER, align 4
  %57 = call i32 @rw_enter(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = call i32 @mutex_enter(i32* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = call %struct.TYPE_11__* @list_head(i32* %63)
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %11, align 8
  br label %65

65:                                               ; preds = %128, %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %133

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %74, %68
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = call i32 @mutex_enter(i32* %83)
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %133

91:                                               ; preds = %81
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %91
  %99 = load i64, i64* %7, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = call i32 @mutex_exit(i32* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = call i32 @mutex_exit(i32* %110)
  %112 = load i64, i64* %10, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = call i32 @rw_exit(i32* %118)
  br label %120

120:                                              ; preds = %114, %105
  br label %315

121:                                              ; preds = %98
  br label %133

122:                                              ; preds = %91
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = call i32 @mutex_exit(i32* %125)
  br label %127

127:                                              ; preds = %123, %74
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = call %struct.TYPE_11__* @list_next(i32* %130, %struct.TYPE_11__* %131)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %11, align 8
  br label %65

133:                                              ; preds = %121, %90, %65
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = icmp eq %struct.TYPE_11__* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %133
  %137 = load i32, i32* @zfetchstat_misses, align 4
  %138 = call i32 @ZFETCHSTAT_BUMP(i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = load i64, i64* %22, align 8
  %141 = call i32 @dmu_zfetch_stream_create(%struct.TYPE_12__* %139, i64 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = call i32 @mutex_exit(i32* %143)
  %145 = load i64, i64* %10, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %136
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = call i32 @rw_exit(i32* %151)
  br label %153

153:                                              ; preds = %147, %136
  br label %315

154:                                              ; preds = %133
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %22, align 8
  %159 = call i64 @MAX(i64 %157, i64 %158)
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %186

162:                                              ; preds = %154
  %163 = load i32, i32* @zfetch_max_distance, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = ashr i32 %163, %168
  store i32 %169, i32* %19, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = sub nsw i64 %172, %173
  %175 = load i64, i64* %8, align 8
  %176 = add nsw i64 %174, %175
  store i64 %176, i64* %16, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* %22, align 8
  %181 = sub nsw i64 %179, %180
  %182 = sub nsw i64 %178, %181
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* %17, align 8
  %185 = call i32 @MIN(i64 %183, i64 %184)
  store i32 %185, i32* %20, align 4
  br label %187

186:                                              ; preds = %154
  store i32 0, i32* %20, align 4
  br label %187

187:                                              ; preds = %186, %162
  %188 = load i64, i64* %12, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @MAX(i64 %196, i64 %199)
  store i64 %200, i64* %13, align 8
  %201 = load i32, i32* @zfetch_max_idistance, align 4
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = ashr i32 %201, %206
  store i32 %207, i32* %19, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %7, align 8
  %212 = sub nsw i64 %210, %211
  %213 = load i64, i64* %8, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %214, %216
  store i64 %217, i64* %16, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %22, align 8
  %222 = sub nsw i64 %220, %221
  %223 = sub nsw i64 %219, %222
  store i64 %223, i64* %17, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64, i64* %17, align 8
  %226 = call i32 @MIN(i64 %224, i64 %225)
  store i32 %226, i32* %21, align 4
  %227 = load i64, i64* %13, align 8
  %228 = load i32, i32* %21, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %227, %229
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %239 = sub nsw i32 %237, %238
  store i32 %239, i32* %18, align 4
  %240 = load i64, i64* %13, align 8
  %241 = load i32, i32* %18, align 4
  %242 = shl i32 1, %241
  %243 = call i32 @P2ROUNDUP(i64 %240, i32 %242)
  %244 = load i32, i32* %18, align 4
  %245 = ashr i32 %243, %244
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %14, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %18, align 4
  %251 = shl i32 1, %250
  %252 = call i32 @P2ROUNDUP(i64 %249, i32 %251)
  %253 = load i32, i32* %18, align 4
  %254 = ashr i32 %252, %253
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %15, align 8
  %256 = call i32 (...) @gethrtime()
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load i64, i64* %22, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = call i32 @mutex_exit(i32* %263)
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = call i32 @mutex_exit(i32* %266)
  store i32 0, i32* %24, align 4
  br label %268

268:                                              ; preds = %283, %187
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* %20, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %286

272:                                              ; preds = %268
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = load i64, i64* %12, align 8
  %277 = load i32, i32* %24, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %276, %278
  %280 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %281 = load i32, i32* @ARC_FLAG_PREDICTIVE_PREFETCH, align 4
  %282 = call i32 @dbuf_prefetch(%struct.TYPE_13__* %275, i32 0, i64 %279, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %272
  %284 = load i32, i32* %24, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %24, align 4
  br label %268

286:                                              ; preds = %268
  %287 = load i64, i64* %14, align 8
  store i64 %287, i64* %25, align 8
  br label %288

288:                                              ; preds = %300, %286
  %289 = load i64, i64* %25, align 8
  %290 = load i64, i64* %15, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %303

292:                                              ; preds = %288
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = load i64, i64* %25, align 8
  %297 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %298 = load i32, i32* @ARC_FLAG_PREDICTIVE_PREFETCH, align 4
  %299 = call i32 @dbuf_prefetch(%struct.TYPE_13__* %295, i32 1, i64 %296, i32 %297, i32 %298)
  br label %300

300:                                              ; preds = %292
  %301 = load i64, i64* %25, align 8
  %302 = add nsw i64 %301, 1
  store i64 %302, i64* %25, align 8
  br label %288

303:                                              ; preds = %288
  %304 = load i64, i64* %10, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %303
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 2
  %311 = call i32 @rw_exit(i32* %310)
  br label %312

312:                                              ; preds = %306, %303
  %313 = load i32, i32* @zfetchstat_hits, align 4
  %314 = call i32 @ZFETCHSTAT_BUMP(i32 %313)
  br label %315

315:                                              ; preds = %312, %153, %120, %47, %43, %38
  ret void
}

declare dso_local i32 @spa_indirect_vdevs_loaded(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_11__* @list_head(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local %struct.TYPE_11__* @list_next(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ZFETCHSTAT_BUMP(i32) #1

declare dso_local i32 @dmu_zfetch_stream_create(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @P2ROUNDUP(i64, i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @dbuf_prefetch(%struct.TYPE_13__*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
