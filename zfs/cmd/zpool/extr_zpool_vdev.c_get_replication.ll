; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_get_replication.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_get_replication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i32 }
%struct.stat64 = type { i64 }

@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i8* null, align 8
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@VDEV_TYPE_REPLACING = common dso_local global i8* null, align 8
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"mismatched replication level: %s contains both files and devices\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@ZPOOL_FUZZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"%s contains devices of different sizes\0A\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"mismatched replication level: %s and %s vdevs with different redundancy, %llu vs. %llu (%llu-way) are present\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"mismatched replication level: both %s and %s vdevs are present\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"mismatched replication level: both %llu and %llu device parity %s vdevs are present\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"mismatched replication level: both %llu-way and %llu-way %s vdevs are present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i64)* @get_replication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @get_replication(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.stat64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32**, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %31 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = call %struct.TYPE_9__* @safe_malloc(i32 24)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %16, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %35 = call i64 @nvlist_lookup_nvlist_array(i32* %33, i32 %34, i32*** %6, i64* %8)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @verify(i32 %37)
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %384, %2
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %387

43:                                               ; preds = %39
  %44 = load i32, i32* @B_FALSE, align 4
  store i32 %44, i32* %20, align 4
  %45 = load i32**, i32*** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %51 = call i32 @nvlist_lookup_uint64(i32* %49, i32 %50, i32* %20)
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %384

55:                                               ; preds = %43
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %58 = call i64 @nvlist_lookup_string(i32* %56, i32 %57, i8** %13)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @verify(i32 %60)
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** @VDEV_TYPE_HOLE, align 8
  %64 = call i64 @strcmp(i8* %62, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %384

67:                                               ; preds = %55
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %70 = call i64 @nvlist_lookup_nvlist_array(i32* %68, i32 %69, i32*** %9, i64* %11)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 0, i32* %76, align 4
  br label %250

77:                                               ; preds = %67
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %89 = call i32 @nvlist_lookup_uint64(i32* %86, i32 %87, i32* %88)
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @verify(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  br label %100

98:                                               ; preds = %77
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 0, i32* %99, align 4
  br label %100

100:                                              ; preds = %98, %85
  store i8* null, i8** %13, align 8
  store i64 0, i64* %19, align 8
  store i64 -1, i64* %21, align 8
  store i64 0, i64* %10, align 8
  br label %101

101:                                              ; preds = %246, %100
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %249

105:                                              ; preds = %101
  %106 = load i32**, i32*** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %22, align 8
  store i64 -1, i64* %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %115 = call i64 @nvlist_lookup_string(i32* %113, i32 %114, i8** %26)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @verify(i32 %117)
  br label %119

119:                                              ; preds = %131, %105
  %120 = load i8*, i8** %26, align 8
  %121 = load i8*, i8** @VDEV_TYPE_REPLACING, align 8
  %122 = call i64 @strcmp(i8* %120, i8* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %26, align 8
  %126 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %127 = call i64 @strcmp(i8* %125, i8* %126)
  %128 = icmp eq i64 %127, 0
  br label %129

129:                                              ; preds = %124, %119
  %130 = phi i1 [ true, %119 ], [ %128, %124 ]
  br i1 %130, label %131, label %151

131:                                              ; preds = %129
  %132 = load i32*, i32** %22, align 8
  %133 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %134 = call i64 @nvlist_lookup_nvlist_array(i32* %132, i32 %133, i32*** %29, i64* %30)
  %135 = icmp eq i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @verify(i32 %136)
  %138 = load i64, i64* %30, align 8
  %139 = icmp eq i64 %138, 2
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32**, i32*** %29, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %22, align 8
  %145 = load i32*, i32** %22, align 8
  %146 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %147 = call i64 @nvlist_lookup_string(i32* %145, i32 %146, i8** %26)
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @verify(i32 %149)
  br label %119

151:                                              ; preds = %129
  %152 = load i32*, i32** %22, align 8
  %153 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %154 = call i64 @nvlist_lookup_string(i32* %152, i32 %153, i8** %23)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @verify(i32 %156)
  %158 = load i64, i64* %19, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %185, label %160

160:                                              ; preds = %151
  %161 = load i8*, i8** %13, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %185

163:                                              ; preds = %160
  %164 = load i8*, i8** %13, align 8
  %165 = load i8*, i8** %26, align 8
  %166 = call i64 @strcmp(i8* %164, i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %185

168:                                              ; preds = %163
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %170 = icmp ne %struct.TYPE_9__* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %173 = call i32 @free(%struct.TYPE_9__* %172)
  br label %174

174:                                              ; preds = %171, %168
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %175 = load i64, i64* %5, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = call i32 @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i32, ...) @vdev_error(i32 %178, i8* %180)
  br label %183

182:                                              ; preds = %174
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

183:                                              ; preds = %177
  %184 = load i64, i64* @B_TRUE, align 8
  store i64 %184, i64* %19, align 8
  br label %185

185:                                              ; preds = %183, %163, %160, %151
  %186 = load i8*, i8** %23, align 8
  %187 = load i32, i32* @O_RDONLY, align 4
  %188 = call i32 @open(i8* %186, i32 %187)
  store i32 %188, i32* %27, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @fstat64_blk(i32 %191, %struct.stat64* %24)
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* %27, align 4
  %194 = call i32 @close(i32 %193)
  br label %198

195:                                              ; preds = %185
  %196 = load i8*, i8** %23, align 8
  %197 = call i32 @stat64(i8* %196, %struct.stat64* %24)
  store i32 %197, i32* %28, align 4
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %28, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @MAXOFFSET_T, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %205, %201, %198
  br label %246

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.stat64, %struct.stat64* %24, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %25, align 8
  %214 = load i64, i64* %19, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %243, label %216

216:                                              ; preds = %211
  %217 = load i64, i64* %21, align 8
  %218 = icmp ne i64 %217, -1
  br i1 %218, label %219, label %243

219:                                              ; preds = %216
  %220 = load i64, i64* %25, align 8
  %221 = load i64, i64* %21, align 8
  %222 = sub nsw i64 %220, %221
  %223 = call i64 @labs(i64 %222)
  %224 = load i64, i64* @ZPOOL_FUZZ, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %243

226:                                              ; preds = %219
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %228 = icmp ne %struct.TYPE_9__* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %231 = call i32 @free(%struct.TYPE_9__* %230)
  br label %232

232:                                              ; preds = %229, %226
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %233 = load i64, i64* %5, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = call i32 @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i32, ...) @vdev_error(i32 %236, i8* %238)
  br label %241

240:                                              ; preds = %232
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

241:                                              ; preds = %235
  %242 = load i64, i64* @B_TRUE, align 8
  store i64 %242, i64* %19, align 8
  br label %243

243:                                              ; preds = %241, %219, %216, %211
  %244 = load i8*, i8** %26, align 8
  store i8* %244, i8** %13, align 8
  %245 = load i64, i64* %25, align 8
  store i64 %245, i64* %21, align 8
  br label %246

246:                                              ; preds = %243, %210
  %247 = load i64, i64* %10, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %10, align 8
  br label %101

249:                                              ; preds = %101
  br label %250

250:                                              ; preds = %249, %72
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %381

254:                                              ; preds = %250
  %255 = call i64 @is_raidz_mirror(%struct.TYPE_9__* %14, %struct.TYPE_9__* %15, %struct.TYPE_9__** %17, %struct.TYPE_9__** %18)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = call i64 @is_raidz_mirror(%struct.TYPE_9__* %15, %struct.TYPE_9__* %14, %struct.TYPE_9__** %17, %struct.TYPE_9__** %18)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %300

260:                                              ; preds = %257, %254
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = sub nsw i32 %266, 1
  %268 = icmp ne i32 %263, %267
  br i1 %268, label %269, label %299

269:                                              ; preds = %260
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %271 = icmp ne %struct.TYPE_9__* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %274 = call i32 @free(%struct.TYPE_9__* %273)
  br label %275

275:                                              ; preds = %272, %269
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %276 = load i64, i64* %5, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %275
  %279 = call i32 @gettext(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0))
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 1
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, ...) @vdev_error(i32 %279, i8* %282, i8* %285, i32 %288, i32 %292, i32 %295)
  br label %298

297:                                              ; preds = %275
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

298:                                              ; preds = %278
  br label %299

299:                                              ; preds = %298, %260
  br label %380

300:                                              ; preds = %257
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = call i64 @strcmp(i8* %302, i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %325

307:                                              ; preds = %300
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %309 = icmp ne %struct.TYPE_9__* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %312 = call i32 @free(%struct.TYPE_9__* %311)
  br label %313

313:                                              ; preds = %310, %307
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %314 = load i64, i64* %5, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = call i32 @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 (i32, ...) @vdev_error(i32 %317, i8* %319, i8* %321)
  br label %324

323:                                              ; preds = %313
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

324:                                              ; preds = %316
  br label %379

325:                                              ; preds = %300
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %327, %329
  br i1 %330, label %331, label %351

331:                                              ; preds = %325
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %333 = icmp ne %struct.TYPE_9__* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %336 = call i32 @free(%struct.TYPE_9__* %335)
  br label %337

337:                                              ; preds = %334, %331
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %338 = load i64, i64* %5, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %337
  %341 = call i32 @gettext(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 (i32, ...) @vdev_error(i32 %341, i32 %343, i32 %345, i8* %347)
  br label %350

349:                                              ; preds = %337
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

350:                                              ; preds = %340
  br label %378

351:                                              ; preds = %325
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %353, %355
  br i1 %356, label %357, label %377

357:                                              ; preds = %351
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %359 = icmp ne %struct.TYPE_9__* %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %362 = call i32 @free(%struct.TYPE_9__* %361)
  br label %363

363:                                              ; preds = %360, %357
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %16, align 8
  %364 = load i64, i64* %5, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %363
  %367 = call i32 @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (i32, ...) @vdev_error(i32 %367, i32 %369, i32 %371, i8* %373)
  br label %376

375:                                              ; preds = %363
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %396

376:                                              ; preds = %366
  br label %377

377:                                              ; preds = %376, %351
  br label %378

378:                                              ; preds = %377, %350
  br label %379

379:                                              ; preds = %378, %324
  br label %380

380:                                              ; preds = %379, %299
  br label %381

381:                                              ; preds = %380, %250
  %382 = bitcast %struct.TYPE_9__* %14 to i8*
  %383 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %382, i8* align 8 %383, i64 24, i1 false)
  br label %384

384:                                              ; preds = %381, %66, %54
  %385 = load i64, i64* %7, align 8
  %386 = add i64 %385, 1
  store i64 %386, i64* %7, align 8
  br label %39

387:                                              ; preds = %39
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %389 = icmp ne %struct.TYPE_9__* %388, null
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %392 = bitcast %struct.TYPE_9__* %391 to i8*
  %393 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %392, i8* align 8 %393, i64 24, i1 false)
  br label %394

394:                                              ; preds = %390, %387
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %395, %struct.TYPE_9__** %3, align 8
  br label %396

396:                                              ; preds = %394, %375, %349, %323, %297, %240, %182
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %397
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_9__* @safe_malloc(i32) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free(%struct.TYPE_9__*) #2

declare dso_local i32 @vdev_error(i32, ...) #2

declare dso_local i32 @gettext(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fstat64_blk(i32, %struct.stat64*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @stat64(i8*, %struct.stat64*) #2

declare dso_local i64 @labs(i64) #2

declare dso_local i64 @is_raidz_mirror(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__**, %struct.TYPE_9__**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
