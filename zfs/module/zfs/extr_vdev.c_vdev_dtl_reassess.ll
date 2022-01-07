; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_dtl_reassess.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_dtl_reassess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, i32*, %struct.TYPE_16__**, i32, %struct.TYPE_13__*, i64, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@zfs_scan_ignore_errors = common dso_local global i64 0, align 8
@DTL_MISSING = common dso_local global i64 0, align 8
@DTL_SCRUB = common dso_local global i64 0, align 8
@DTL_PARTIAL = common dso_local global i64 0, align 8
@DTL_OUTAGE = common dso_local global i64 0, align 8
@VDD_DTL = common dso_local global i32 0, align 4
@DTL_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_dtl_reassess(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = load i32, i32* @SCL_ALL, align 4
  %23 = load i32, i32* @RW_READER, align 4
  %24 = call i64 @spa_config_held(%struct.TYPE_17__* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %45, %4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  call void @vdev_dtl_reassess(%struct.TYPE_16__* %41, i64 %42, i64 %43, i32 %44)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = icmp eq %struct.TYPE_16__* %49, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = call i32 @vdev_is_concrete(%struct.TYPE_16__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54, %48
  br label %346

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %248

71:                                               ; preds = %64
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %13, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = call i32 @mutex_enter(i32* %78)
  %80 = load i64, i64* @zfs_scan_ignore_errors, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %84 = icmp ne %struct.TYPE_18__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %82, %71
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %89
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %100, %92
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = call i64 @vdev_dtl_should_excise(%struct.TYPE_16__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = call i32 @space_reftree_create(i32* %10)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @DTL_MISSING, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @space_reftree_add_map(i32* %10, i32 %117, i32 1)
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @space_reftree_add_seg(i32* %10, i32 0, i64 %119, i32 -1)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @DTL_SCRUB, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @space_reftree_add_map(i32* %10, i32 %126, i32 2)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @DTL_MISSING, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @space_reftree_generate_map(i32* %10, i32 %133, i32 1)
  %135 = call i32 @space_reftree_destroy(i32* %10)
  br label %136

136:                                              ; preds = %110, %106, %100, %97, %89
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @DTL_PARTIAL, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @range_tree_vacate(i32 %142, i32* null, i32* null)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @DTL_MISSING, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @DTL_PARTIAL, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @range_tree_walk(i32 %149, i32 (i32, i32, i64)* @range_tree_add, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %136
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @DTL_SCRUB, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @range_tree_vacate(i32 %165, i32* null, i32* null)
  br label %167

167:                                              ; preds = %159, %136
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @DTL_OUTAGE, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @range_tree_vacate(i32 %173, i32* null, i32* null)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = call i32 @vdev_readable(%struct.TYPE_16__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %167
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* @DTL_OUTAGE, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @range_tree_add(i32 %184, i32 0, i64 -1)
  br label %200

186:                                              ; preds = %167
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @DTL_MISSING, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @DTL_OUTAGE, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @range_tree_walk(i32 %192, i32 (i32, i32, i64)* @range_tree_add, i32 %198)
  br label %200

200:                                              ; preds = %186, %178
  %201 = load i64, i64* %6, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %233

203:                                              ; preds = %200
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %233

208:                                              ; preds = %203
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @DTL_MISSING, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @range_tree_is_empty(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %208
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @DTL_OUTAGE, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @range_tree_is_empty(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %217
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @vdev_config_dirty(i32 %231)
  br label %233

233:                                              ; preds = %226, %217, %208, %203, %200
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 3
  %236 = call i32 @mutex_exit(i32* %235)
  %237 = load i64, i64* %6, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %233
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @VDD_DTL, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %245 = load i64, i64* %6, align 8
  %246 = call i32 @vdev_dirty(i32 %242, i32 %243, %struct.TYPE_16__* %244, i64 %245)
  br label %247

247:                                              ; preds = %239, %233
  br label %346

248:                                              ; preds = %64
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = call i32 @mutex_enter(i32* %250)
  store i32 0, i32* %14, align 4
  br label %252

252:                                              ; preds = %339, %248
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* @DTL_TYPES, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %342

256:                                              ; preds = %252
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @DTL_MISSING, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i64, i64* @DTL_OUTAGE, align 8
  br label %266

263:                                              ; preds = %256
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  br label %266

266:                                              ; preds = %263, %261
  %267 = phi i64 [ %262, %261 ], [ %265, %263 ]
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* @DTL_SCRUB, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %339

274:                                              ; preds = %266
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = load i64, i64* @DTL_PARTIAL, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  store i32 1, i32* %11, align 4
  br label %295

280:                                              ; preds = %274
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %11, align 4
  br label %294

290:                                              ; preds = %280
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %11, align 4
  br label %294

294:                                              ; preds = %290, %285
  br label %295

295:                                              ; preds = %294, %279
  %296 = call i32 @space_reftree_create(i32* %10)
  store i32 0, i32* %16, align 4
  br label %297

297:                                              ; preds = %325, %295
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %328

303:                                              ; preds = %297
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %305, align 8
  %307 = load i32, i32* %16, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %306, i64 %308
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  store %struct.TYPE_16__* %310, %struct.TYPE_16__** %17, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 3
  %313 = call i32 @mutex_enter(i32* %312)
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @space_reftree_add_map(i32* %10, i32 %320, i32 1)
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 3
  %324 = call i32 @mutex_exit(i32* %323)
  br label %325

325:                                              ; preds = %303
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %16, align 4
  br label %297

328:                                              ; preds = %297
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %11, align 4
  %337 = call i32 @space_reftree_generate_map(i32* %10, i32 %335, i32 %336)
  %338 = call i32 @space_reftree_destroy(i32* %10)
  br label %339

339:                                              ; preds = %328, %273
  %340 = load i32, i32* %14, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %14, align 4
  br label %252

342:                                              ; preds = %252
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 3
  %345 = call i32 @mutex_exit(i32* %344)
  br label %346

346:                                              ; preds = %342, %247, %63
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @vdev_dtl_should_excise(%struct.TYPE_16__*) #1

declare dso_local i32 @space_reftree_create(i32*) #1

declare dso_local i32 @space_reftree_add_map(i32*, i32, i32) #1

declare dso_local i32 @space_reftree_add_seg(i32*, i32, i64, i32) #1

declare dso_local i32 @space_reftree_generate_map(i32*, i32, i32) #1

declare dso_local i32 @space_reftree_destroy(i32*) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, i32*) #1

declare dso_local i32 @range_tree_walk(i32, i32 (i32, i32, i64)*, i32) #1

declare dso_local i32 @range_tree_add(i32, i32, i64) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_16__*) #1

declare dso_local i64 @range_tree_is_empty(i32) #1

declare dso_local i32 @vdev_config_dirty(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_dirty(i32, i32, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
