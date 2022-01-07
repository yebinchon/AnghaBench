; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_l2cache.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_l2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32*, %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_33__*, %struct.TYPE_31__* }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@VDEV_ALLOC_L2CACHE = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_load_l2cache(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.TYPE_31__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__**, align 8
  %11 = alloca %struct.TYPE_31__**, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %3, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  store %struct.TYPE_33__* %15, %struct.TYPE_33__** %12, align 8
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %17 = call i32 @spa_writeable(%struct.TYPE_32__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %318

20:                                               ; preds = %1
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %22 = load i64, i64* @SCL_ALL, align 8
  %23 = load i32, i32* @RW_WRITER, align 4
  %24 = call i64 @spa_config_held(%struct.TYPE_32__* %21, i64 %22, i32 %23)
  %25 = load i64, i64* @SCL_ALL, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %30, align 8
  store %struct.TYPE_31__** %31, %struct.TYPE_31__*** %10, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 2
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %36, align 8
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %11, align 8
  br label %235

44:                                               ; preds = %20
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %49 = call i64 @nvlist_lookup_nvlist_array(i32* %47, i32 %48, %struct.TYPE_31__*** %3, i32* %4)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @KM_SLEEP, align 4
  %58 = call %struct.TYPE_31__** @kmem_alloc(i32 %56, i32 %57)
  store %struct.TYPE_31__** %58, %struct.TYPE_31__*** %11, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %164, %44
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %167

63:                                               ; preds = %59
  %64 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %64, i64 %66
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %67, align 8
  %69 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %70 = call i64 @nvlist_lookup_uint64(%struct.TYPE_31__* %68, i32 %69, i64* %8)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  %74 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %74, i64 %76
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %107, %63
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %83, i64 %85
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %86, align 8
  store %struct.TYPE_31__* %87, %struct.TYPE_31__** %9, align 8
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %89 = icmp ne %struct.TYPE_31__* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %82
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %98 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %98, i64 %100
  store %struct.TYPE_31__* %97, %struct.TYPE_31__** %101, align 8
  %102 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %102, i64 %104
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %105, align 8
  br label %110

106:                                              ; preds = %90, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %78

110:                                              ; preds = %96, %78
  %111 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %111, i64 %113
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %114, align 8
  %116 = icmp eq %struct.TYPE_31__* %115, null
  br i1 %116, label %117, label %163

117:                                              ; preds = %110
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %119 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %119, i64 %121
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %122, align 8
  %124 = load i32, i32* @VDEV_ALLOC_L2CACHE, align 4
  %125 = call i64 @spa_config_parse(%struct.TYPE_32__* %118, %struct.TYPE_31__** %9, %struct.TYPE_31__* %123, i32* null, i32 0, i32 %124)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @VERIFY(i32 %127)
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %130 = icmp ne %struct.TYPE_31__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %134 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %134, i64 %136
  store %struct.TYPE_31__* %133, %struct.TYPE_31__** %137, align 8
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %139 = call i32 @spa_l2cache_add(%struct.TYPE_31__* %138)
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 3
  store %struct.TYPE_31__* %140, %struct.TYPE_31__** %142, align 8
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 2
  store %struct.TYPE_33__* %143, %struct.TYPE_33__** %145, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %147 = call i32 @spa_l2cache_activate(%struct.TYPE_31__* %146)
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %149 = call i64 @vdev_open(%struct.TYPE_31__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %117
  br label %164

152:                                              ; preds = %117
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %154 = call i32 @vdev_validate_aux(%struct.TYPE_31__* %153)
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %156 = call i32 @vdev_is_dead(%struct.TYPE_31__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %161 = call i32 @l2arc_add_vdev(%struct.TYPE_32__* %159, %struct.TYPE_31__* %160)
  br label %162

162:                                              ; preds = %158, %152
  br label %163

163:                                              ; preds = %162, %110
  br label %164

164:                                              ; preds = %163, %151
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %59

167:                                              ; preds = %59
  %168 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 2
  store %struct.TYPE_31__** %168, %struct.TYPE_31__*** %170, align 8
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %178 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %179 = call i64 @nvlist_remove(i32* %176, i32 %177, i32 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @VERIFY(i32 %181)
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %167
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 8
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* @KM_SLEEP, align 4
  %195 = call %struct.TYPE_31__** @kmem_alloc(i32 %193, i32 %194)
  store %struct.TYPE_31__** %195, %struct.TYPE_31__*** %3, align 8
  br label %196

196:                                              ; preds = %187, %167
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %219, %196
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %197
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %207, i64 %209
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %210, align 8
  %212 = load i32, i32* @B_TRUE, align 4
  %213 = load i32, i32* @VDEV_CONFIG_L2CACHE, align 4
  %214 = call %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__* %204, %struct.TYPE_31__* %211, i32 %212, i32 %213)
  %215 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %215, i64 %217
  store %struct.TYPE_31__* %214, %struct.TYPE_31__** %218, align 8
  br label %219

219:                                              ; preds = %203
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %197

222:                                              ; preds = %197
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %227 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i64 @nvlist_add_nvlist_array(i32* %225, i32 %226, %struct.TYPE_31__** %227, i32 %230)
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @VERIFY(i32 %233)
  br label %235

235:                                              ; preds = %222, %43
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %274, %235
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %277

240:                                              ; preds = %236
  %241 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %241, i64 %243
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %244, align 8
  store %struct.TYPE_31__* %245, %struct.TYPE_31__** %9, align 8
  %246 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %247 = icmp ne %struct.TYPE_31__* %246, null
  br i1 %247, label %248, label %273

248:                                              ; preds = %240
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @ASSERT(i32 %251)
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i64 @spa_l2cache_exists(i64 %255, i64* %13)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %248
  %259 = load i64, i64* %13, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %263 = call i64 @l2arc_vdev_present(%struct.TYPE_31__* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %267 = call i32 @l2arc_remove_vdev(%struct.TYPE_31__* %266)
  br label %268

268:                                              ; preds = %265, %261, %258, %248
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %270 = call i32 @vdev_clear_stats(%struct.TYPE_31__* %269)
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %272 = call i32 @vdev_free(%struct.TYPE_31__* %271)
  br label %273

273:                                              ; preds = %268, %240
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %5, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %5, align 4
  br label %236

277:                                              ; preds = %236
  %278 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %279 = icmp ne %struct.TYPE_31__** %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = mul i64 %283, 8
  %285 = trunc i64 %284 to i32
  %286 = call i32 @kmem_free(%struct.TYPE_31__** %281, i32 %285)
  br label %287

287:                                              ; preds = %280, %277
  store i32 0, i32* %5, align 4
  br label %288

288:                                              ; preds = %301, %287
  %289 = load i32, i32* %5, align 4
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %288
  %295 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %295, i64 %297
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %298, align 8
  %300 = call i32 @nvlist_free(%struct.TYPE_31__* %299)
  br label %301

301:                                              ; preds = %294
  %302 = load i32, i32* %5, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %5, align 4
  br label %288

304:                                              ; preds = %288
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %304
  %310 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %311 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = mul i64 %314, 8
  %316 = trunc i64 %315 to i32
  %317 = call i32 @kmem_free(%struct.TYPE_31__** %310, i32 %316)
  br label %318

318:                                              ; preds = %19, %309, %304
  ret void
}

declare dso_local i32 @spa_writeable(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_32__*, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, %struct.TYPE_31__***, i32*) #1

declare dso_local %struct.TYPE_31__** @kmem_alloc(i32, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(%struct.TYPE_31__*, i32, i64*) #1

declare dso_local i64 @spa_config_parse(%struct.TYPE_32__*, %struct.TYPE_31__**, %struct.TYPE_31__*, i32*, i32, i32) #1

declare dso_local i32 @spa_l2cache_add(%struct.TYPE_31__*) #1

declare dso_local i32 @spa_l2cache_activate(%struct.TYPE_31__*) #1

declare dso_local i64 @vdev_open(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_validate_aux(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_31__*) #1

declare dso_local i32 @l2arc_add_vdev(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, %struct.TYPE_31__**, i32) #1

declare dso_local i64 @spa_l2cache_exists(i64, i64*) #1

declare dso_local i64 @l2arc_vdev_present(%struct.TYPE_31__*) #1

declare dso_local i32 @l2arc_remove_vdev(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_clear_stats(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_31__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_31__**, i32) #1

declare dso_local i32 @nvlist_free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
