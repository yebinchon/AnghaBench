; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_spares.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_load_spares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32*, %struct.TYPE_31__** }
%struct.TYPE_31__ = type { %struct.TYPE_30__*, %struct.TYPE_31__*, i64, i32 }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@VDEV_ALLOC_SPARE = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_CONFIG_SPARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_load_spares(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.TYPE_31__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  %8 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %9 = call i32 @spa_writeable(%struct.TYPE_32__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %283

12:                                               ; preds = %1
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %14 = load i64, i64* @SCL_ALL, align 8
  %15 = load i32, i32* @RW_WRITER, align 4
  %16 = call i64 @spa_config_held(%struct.TYPE_32__* %13, i64 %14, i32 %15)
  %17 = load i64, i64* @SCL_ALL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %57, %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %21
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %32, i64 %34
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  store %struct.TYPE_31__* %36, %struct.TYPE_31__** %6, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @B_FALSE, align 4
  %42 = call %struct.TYPE_31__* @spa_lookup_by_guid(%struct.TYPE_32__* %37, i32 %40, i32 %41)
  store %struct.TYPE_31__* %42, %struct.TYPE_31__** %7, align 8
  %43 = icmp ne %struct.TYPE_31__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %51 = call i32 @spa_spare_remove(%struct.TYPE_31__* %50)
  br label %52

52:                                               ; preds = %49, %44, %28
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %54 = call i32 @vdev_close(%struct.TYPE_31__* %53)
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %56 = call i32 @vdev_free(%struct.TYPE_31__* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %63, align 8
  %65 = icmp ne %struct.TYPE_31__** %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %69, align 8
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @kmem_free(%struct.TYPE_31__** %70, i32 %77)
  br label %79

79:                                               ; preds = %66, %60
  %80 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %96

86:                                               ; preds = %79
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %92 = call i64 @nvlist_lookup_nvlist_array(i32* %90, i32 %91, %struct.TYPE_31__*** %3, i32* %4)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @VERIFY(i32 %94)
  br label %96

96:                                               ; preds = %86, %85
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 2
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %283

107:                                              ; preds = %96
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @KM_SLEEP, align 4
  %113 = call %struct.TYPE_31__** @kmem_zalloc(i32 %111, i32 %112)
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 2
  store %struct.TYPE_31__** %113, %struct.TYPE_31__*** %116, align 8
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %191, %107
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %194

124:                                              ; preds = %117
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %126 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %126, i64 %128
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %129, align 8
  %131 = load i32, i32* @VDEV_ALLOC_SPARE, align 4
  %132 = call i64 @spa_config_parse(%struct.TYPE_32__* %125, %struct.TYPE_31__** %6, %struct.TYPE_31__* %130, i32* null, i32 0, i32 %131)
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @VERIFY(i32 %134)
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %137 = icmp ne %struct.TYPE_31__* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 @ASSERT(i32 %138)
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %144, i64 %146
  store %struct.TYPE_31__* %140, %struct.TYPE_31__** %147, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @B_FALSE, align 4
  %153 = call %struct.TYPE_31__* @spa_lookup_by_guid(%struct.TYPE_32__* %148, i32 %151, i32 %152)
  store %struct.TYPE_31__* %153, %struct.TYPE_31__** %7, align 8
  %154 = icmp ne %struct.TYPE_31__* %153, null
  br i1 %154, label %155, label %171

155:                                              ; preds = %124
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %162 = call i32 @spa_spare_add(%struct.TYPE_31__* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %165 = call i32 @vdev_is_dead(%struct.TYPE_31__* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %169 = call i32 @spa_spare_activate(%struct.TYPE_31__* %168)
  br label %170

170:                                              ; preds = %167, %163
  br label %171

171:                                              ; preds = %170, %124
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 1
  store %struct.TYPE_31__* %172, %struct.TYPE_31__** %174, align 8
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  store %struct.TYPE_30__* %176, %struct.TYPE_30__** %178, align 8
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %180 = call i64 @vdev_open(%struct.TYPE_31__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %191

183:                                              ; preds = %171
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %185 = call i64 @vdev_validate_aux(%struct.TYPE_31__* %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %189 = call i32 @spa_spare_add(%struct.TYPE_31__* %188)
  br label %190

190:                                              ; preds = %187, %183
  br label %191

191:                                              ; preds = %190, %182
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %117

194:                                              ; preds = %117
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %200 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %201 = call i64 @nvlist_remove(i32* %198, i32 %199, i32 %200)
  %202 = icmp eq i64 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i32 @VERIFY(i32 %203)
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 8
  %211 = trunc i64 %210 to i32
  %212 = load i32, i32* @KM_SLEEP, align 4
  %213 = call %struct.TYPE_31__** @kmem_alloc(i32 %211, i32 %212)
  store %struct.TYPE_31__** %213, %struct.TYPE_31__*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %238, %194
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %241

221:                                              ; preds = %214
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %226, i64 %228
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %229, align 8
  %231 = load i32, i32* @B_TRUE, align 4
  %232 = load i32, i32* @VDEV_CONFIG_SPARE, align 4
  %233 = call %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__* %222, %struct.TYPE_31__* %230, i32 %231, i32 %232)
  %234 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %234, i64 %236
  store %struct.TYPE_31__* %233, %struct.TYPE_31__** %237, align 8
  br label %238

238:                                              ; preds = %221
  %239 = load i32, i32* %5, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %5, align 4
  br label %214

241:                                              ; preds = %214
  %242 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %247 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @nvlist_add_nvlist_array(i32* %245, i32 %246, %struct.TYPE_31__** %247, i32 %251)
  %253 = icmp eq i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @VERIFY(i32 %254)
  store i32 0, i32* %5, align 4
  br label %256

256:                                              ; preds = %270, %241
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %257, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %256
  %264 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %265 = load i32, i32* %5, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %264, i64 %266
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %267, align 8
  %269 = call i32 @nvlist_free(%struct.TYPE_31__* %268)
  br label %270

270:                                              ; preds = %263
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %256

273:                                              ; preds = %256
  %274 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = mul i64 %279, 8
  %281 = trunc i64 %280 to i32
  %282 = call i32 @kmem_free(%struct.TYPE_31__** %274, i32 %281)
  br label %283

283:                                              ; preds = %273, %106, %11
  ret void
}

declare dso_local i32 @spa_writeable(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_32__*, i64, i32) #1

declare dso_local %struct.TYPE_31__* @spa_lookup_by_guid(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @spa_spare_remove(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_close(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_31__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_31__**, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, %struct.TYPE_31__***, i32*) #1

declare dso_local %struct.TYPE_31__** @kmem_zalloc(i32, i32) #1

declare dso_local i64 @spa_config_parse(%struct.TYPE_32__*, %struct.TYPE_31__**, %struct.TYPE_31__*, i32*, i32, i32) #1

declare dso_local i32 @spa_spare_add(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_31__*) #1

declare dso_local i32 @spa_spare_activate(%struct.TYPE_31__*) #1

declare dso_local i64 @vdev_open(%struct.TYPE_31__*) #1

declare dso_local i64 @vdev_validate_aux(%struct.TYPE_31__*) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local %struct.TYPE_31__** @kmem_alloc(i32, i32) #1

declare dso_local %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, %struct.TYPE_31__**, i32) #1

declare dso_local i32 @nvlist_free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
