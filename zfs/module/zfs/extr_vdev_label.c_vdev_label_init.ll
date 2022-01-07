; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_label.c_vdev_label_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_21__**, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_23__ = type { i64 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VDEV_LABEL_REMOVE = common dso_local global i64 0, align 8
@VDEV_LABEL_SPLIT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@VDEV_LABEL_L2CACHE = common dso_local global i64 0, align 8
@VDEV_LABEL_SPARE = common dso_local global i64 0, align 8
@VDEV_LABEL_REPLACE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CREATE_TXG = common dso_local global i32 0, align 4
@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_UBERBLOCK_RING = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_vdev_phys = common dso_local global i32 0, align 4
@vl_pad2 = common dso_local global i32 0, align 4
@vl_uberblock = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_label_init(%struct.TYPE_21__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_21__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_21__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 9
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %8, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %32 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %33 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %21, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %36 = load i64, i64* @SCL_ALL, align 8
  %37 = load i32, i32* @RW_WRITER, align 4
  %38 = call i64 @spa_config_held(%struct.TYPE_24__* %35, i64 %36, i32 %37)
  %39 = load i64, i64* @SCL_ALL, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  store i32 0, i32* %22, align 4
  br label %43

43:                                               ; preds = %64, %3
  %44 = load i32, i32* %22, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %51, align 8
  %53 = load i32, i32* %22, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %52, i64 %54
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @vdev_label_init(%struct.TYPE_21__* %56, i64 %57, i64 %58)
  store i32 %59, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %4, align 4
  br label %482

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %22, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %22, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = call i32 @spa_writeable(%struct.TYPE_24__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %67
  store i32 0, i32* %4, align 4
  br label %482

82:                                               ; preds = %77
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i64 @vdev_is_dead(%struct.TYPE_21__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EIO, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %4, align 4
  br label %482

89:                                               ; preds = %82
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @vdev_inuse(%struct.TYPE_21__* %98, i64 %99, i64 %100, i64* %19, i64* %20)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EBUSY, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %4, align 4
  br label %482

106:                                              ; preds = %97, %93, %89
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %161

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %161

114:                                              ; preds = %110
  %115 = load i64, i64* %19, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %114
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %118, %121
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %24, align 8
  br label %129

129:                                              ; preds = %140, %117
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %131 = icmp ne %struct.TYPE_21__* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i64, i64* %23, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 8
  br label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  store %struct.TYPE_21__* %143, %struct.TYPE_21__** %24, align 8
  br label %129

144:                                              ; preds = %129
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %482

149:                                              ; preds = %144
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @VDEV_LABEL_REPLACE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i1 [ true, %149 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @ASSERT(i32 %159)
  br label %161

161:                                              ; preds = %157, %114, %110, %106
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %210

165:                                              ; preds = %161
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %210

169:                                              ; preds = %165
  %170 = load i64, i64* %20, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %210

172:                                              ; preds = %169
  %173 = load i64, i64* %20, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %173, %176
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %183, %struct.TYPE_21__** %26, align 8
  br label %184

184:                                              ; preds = %195, %172
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %186 = icmp ne %struct.TYPE_21__* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i64, i64* %25, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  br label %195

195:                                              ; preds = %187
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  store %struct.TYPE_21__* %198, %struct.TYPE_21__** %26, align 8
  br label %184

199:                                              ; preds = %184
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %4, align 4
  br label %482

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @VDEV_LABEL_REPLACE, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @ASSERT(i32 %208)
  br label %210

210:                                              ; preds = %204, %169, %165, %161
  %211 = load i32, i32* @B_TRUE, align 4
  %212 = call i32* @abd_alloc_linear(i32 8, i32 %211)
  store i32* %212, i32** %11, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @abd_zero(i32* %213, i32 8)
  %215 = load i32*, i32** %11, align 8
  %216 = call i8* @abd_to_buf(i32* %215)
  %217 = bitcast i8* %216 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %217, %struct.TYPE_22__** %10, align 8
  %218 = load i64, i64* %7, align 8
  %219 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %230, label %221

221:                                              ; preds = %210
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %261

225:                                              ; preds = %221
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %261

230:                                              ; preds = %225, %210
  %231 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %232 = load i32, i32* @KM_SLEEP, align 4
  %233 = call i64 @nvlist_alloc(i32** %9, i32 %231, i32 %232)
  %234 = icmp eq i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @VERIFY(i32 %235)
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %240 = call i64 @spa_version(%struct.TYPE_24__* %239)
  %241 = call i64 @nvlist_add_uint64(i32* %237, i32 %238, i64 %240)
  %242 = icmp eq i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @VERIFY(i32 %243)
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %247 = load i64, i64* @POOL_STATE_SPARE, align 8
  %248 = call i64 @nvlist_add_uint64(i32* %245, i32 %246, i64 %247)
  %249 = icmp eq i64 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i32 @VERIFY(i32 %250)
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @nvlist_add_uint64(i32* %252, i32 %253, i64 %256)
  %258 = icmp eq i64 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @VERIFY(i32 %259)
  br label %328

261:                                              ; preds = %225, %221
  %262 = load i64, i64* %7, align 8
  %263 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %274, label %265

265:                                              ; preds = %261
  %266 = load i64, i64* %7, align 8
  %267 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %305

269:                                              ; preds = %265
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %305

274:                                              ; preds = %269, %261
  %275 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %276 = load i32, i32* @KM_SLEEP, align 4
  %277 = call i64 @nvlist_alloc(i32** %9, i32 %275, i32 %276)
  %278 = icmp eq i64 %277, 0
  %279 = zext i1 %278 to i32
  %280 = call i32 @VERIFY(i32 %279)
  %281 = load i32*, i32** %9, align 8
  %282 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %284 = call i64 @spa_version(%struct.TYPE_24__* %283)
  %285 = call i64 @nvlist_add_uint64(i32* %281, i32 %282, i64 %284)
  %286 = icmp eq i64 %285, 0
  %287 = zext i1 %286 to i32
  %288 = call i32 @VERIFY(i32 %287)
  %289 = load i32*, i32** %9, align 8
  %290 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %291 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %292 = call i64 @nvlist_add_uint64(i32* %289, i32 %290, i64 %291)
  %293 = icmp eq i64 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @VERIFY(i32 %294)
  %296 = load i32*, i32** %9, align 8
  %297 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = call i64 @nvlist_add_uint64(i32* %296, i32 %297, i64 %300)
  %302 = icmp eq i64 %301, 0
  %303 = zext i1 %302 to i32
  %304 = call i32 @VERIFY(i32 %303)
  br label %327

305:                                              ; preds = %269, %265
  store i64 0, i64* %27, align 8
  %306 = load i64, i64* %7, align 8
  %307 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %305
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %27, align 8
  br label %314

314:                                              ; preds = %309, %305
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %317 = load i64, i64* %27, align 8
  %318 = load i32, i32* @B_FALSE, align 4
  %319 = call i32* @spa_config_generate(%struct.TYPE_24__* %315, %struct.TYPE_21__* %316, i64 %317, i32 %318)
  store i32* %319, i32** %9, align 8
  %320 = load i32*, i32** %9, align 8
  %321 = load i32, i32* @ZPOOL_CONFIG_CREATE_TXG, align 4
  %322 = load i64, i64* %6, align 8
  %323 = call i64 @nvlist_add_uint64(i32* %320, i32 %321, i64 %322)
  %324 = icmp eq i64 %323, 0
  %325 = zext i1 %324 to i32
  %326 = call i32 @VERIFY(i32 %325)
  br label %327

327:                                              ; preds = %314, %274
  br label %328

328:                                              ; preds = %327, %230
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  store i8* %331, i8** %16, align 8
  store i64 8, i64* %17, align 8
  %332 = load i32*, i32** %9, align 8
  %333 = load i32, i32* @NV_ENCODE_XDR, align 4
  %334 = load i32, i32* @KM_SLEEP, align 4
  %335 = call i32 @nvlist_pack(i32* %332, i8** %16, i64* %17, i32 %333, i32 %334)
  store i32 %335, i32* %18, align 4
  %336 = load i32, i32* %18, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %353

338:                                              ; preds = %328
  %339 = load i32*, i32** %9, align 8
  %340 = call i32 @nvlist_free(i32* %339)
  %341 = load i32*, i32** %11, align 8
  %342 = call i32 @abd_free(i32* %341)
  %343 = load i32, i32* %18, align 4
  %344 = load i32, i32* @EFAULT, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %338
  %347 = load i32, i32* @ENAMETOOLONG, align 4
  br label %350

348:                                              ; preds = %338
  %349 = load i32, i32* @EINVAL, align 4
  br label %350

350:                                              ; preds = %348, %346
  %351 = phi i32 [ %347, %346 ], [ %349, %348 ]
  %352 = call i32 @SET_ERROR(i32 %351)
  store i32 %352, i32* %4, align 4
  br label %482

353:                                              ; preds = %328
  %354 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %355 = load i32, i32* @B_TRUE, align 4
  %356 = call i32* @abd_alloc_linear(i32 %354, i32 %355)
  store i32* %356, i32** %14, align 8
  %357 = load i32*, i32** %14, align 8
  %358 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %359 = call i32 @abd_zero(i32* %357, i32 %358)
  %360 = load i32*, i32** %14, align 8
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %361, i32 0, i32 0
  %363 = call i32 @abd_copy_from_buf(i32* %360, %struct.TYPE_19__* %362, i32 8)
  %364 = load i32*, i32** %14, align 8
  %365 = call i8* @abd_to_buf(i32* %364)
  %366 = bitcast i8* %365 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %366, %struct.TYPE_23__** %13, align 8
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  store i64 0, i64* %368, align 8
  %369 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %370 = load i32, i32* @B_TRUE, align 4
  %371 = call i32* @abd_alloc_for_io(i32 %369, i32 %370)
  store i32* %371, i32** %12, align 8
  %372 = load i32*, i32** %12, align 8
  %373 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %374 = call i32 @abd_zero(i32* %372, i32 %373)
  br label %375

375:                                              ; preds = %426, %353
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %377 = load i32, i32* %21, align 4
  %378 = call i32* @zio_root(%struct.TYPE_24__* %376, i32* null, i32* null, i32 %377)
  store i32* %378, i32** %15, align 8
  store i32 0, i32* %28, align 4
  br label %379

379:                                              ; preds = %413, %375
  %380 = load i32, i32* %28, align 4
  %381 = load i32, i32* @VDEV_LABELS, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %416

383:                                              ; preds = %379
  %384 = load i32*, i32** %15, align 8
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %386 = load i32, i32* %28, align 4
  %387 = load i32*, i32** %11, align 8
  %388 = load i32, i32* @vdev_label_t, align 4
  %389 = load i32, i32* @vl_vdev_phys, align 4
  %390 = call i32 @offsetof(i32 %388, i32 %389)
  %391 = load i32, i32* %21, align 4
  %392 = call i32 @vdev_label_write(i32* %384, %struct.TYPE_21__* %385, i32 %386, i32* %387, i32 %390, i32 8, i32* null, i32* null, i32 %391)
  %393 = load i32*, i32** %15, align 8
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %395 = load i32, i32* %28, align 4
  %396 = load i32*, i32** %12, align 8
  %397 = load i32, i32* @vdev_label_t, align 4
  %398 = load i32, i32* @vl_pad2, align 4
  %399 = call i32 @offsetof(i32 %397, i32 %398)
  %400 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %401 = load i32, i32* %21, align 4
  %402 = call i32 @vdev_label_write(i32* %393, %struct.TYPE_21__* %394, i32 %395, i32* %396, i32 %399, i32 %400, i32* null, i32* null, i32 %401)
  %403 = load i32*, i32** %15, align 8
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %405 = load i32, i32* %28, align 4
  %406 = load i32*, i32** %14, align 8
  %407 = load i32, i32* @vdev_label_t, align 4
  %408 = load i32, i32* @vl_uberblock, align 4
  %409 = call i32 @offsetof(i32 %407, i32 %408)
  %410 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %411 = load i32, i32* %21, align 4
  %412 = call i32 @vdev_label_write(i32* %403, %struct.TYPE_21__* %404, i32 %405, i32* %406, i32 %409, i32 %410, i32* null, i32* null, i32 %411)
  br label %413

413:                                              ; preds = %383
  %414 = load i32, i32* %28, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %28, align 4
  br label %379

416:                                              ; preds = %379
  %417 = load i32*, i32** %15, align 8
  %418 = call i32 @zio_wait(i32* %417)
  store i32 %418, i32* %18, align 4
  %419 = load i32, i32* %18, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %416
  %422 = load i32, i32* %21, align 4
  %423 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %430, label %426

426:                                              ; preds = %421
  %427 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %428 = load i32, i32* %21, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %21, align 4
  br label %375

430:                                              ; preds = %421, %416
  %431 = load i32*, i32** %9, align 8
  %432 = call i32 @nvlist_free(i32* %431)
  %433 = load i32*, i32** %12, align 8
  %434 = call i32 @abd_free(i32* %433)
  %435 = load i32*, i32** %14, align 8
  %436 = call i32 @abd_free(i32* %435)
  %437 = load i32*, i32** %11, align 8
  %438 = call i32 @abd_free(i32* %437)
  %439 = load i32, i32* %18, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %459

441:                                              ; preds = %430
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 4
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %459, label %446

446:                                              ; preds = %441
  %447 = load i64, i64* %7, align 8
  %448 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %456, label %450

450:                                              ; preds = %446
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 2
  %453 = load i64, i64* %452, align 8
  %454 = call i64 @spa_spare_exists(i64 %453, i32* null, i32* null)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %450, %446
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %458 = call i32 @spa_spare_add(%struct.TYPE_21__* %457)
  br label %459

459:                                              ; preds = %456, %450, %441, %430
  %460 = load i32, i32* %18, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %480

462:                                              ; preds = %459
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %480, label %467

467:                                              ; preds = %462
  %468 = load i64, i64* %7, align 8
  %469 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %477, label %471

471:                                              ; preds = %467
  %472 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %472, i32 0, i32 2
  %474 = load i64, i64* %473, align 8
  %475 = call i64 @spa_l2cache_exists(i64 %474, i32* null)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %471, %467
  %478 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %479 = call i32 @spa_l2cache_add(%struct.TYPE_21__* %478)
  br label %480

480:                                              ; preds = %477, %471, %462, %459
  %481 = load i32, i32* %18, align 4
  store i32 %481, i32* %4, align 4
  br label %482

482:                                              ; preds = %480, %350, %203, %148, %103, %86, %81, %61
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_24__*, i64, i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_24__*) #1

declare dso_local i64 @vdev_is_dead(%struct.TYPE_21__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @vdev_inuse(%struct.TYPE_21__*, i64, i64, i64*, i64*) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i8* @abd_to_buf(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @spa_version(%struct.TYPE_24__*) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_24__*, %struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @abd_free(i32*) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32* @abd_alloc_for_io(i32, i32) #1

declare dso_local i32* @zio_root(%struct.TYPE_24__*, i32*, i32*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_21__*, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i64 @spa_spare_exists(i64, i32*, i32*) #1

declare dso_local i32 @spa_spare_add(%struct.TYPE_21__*) #1

declare dso_local i64 @spa_l2cache_exists(i64, i32*) #1

declare dso_local i32 @spa_l2cache_add(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
