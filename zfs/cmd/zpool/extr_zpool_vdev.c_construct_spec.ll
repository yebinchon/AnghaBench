; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_construct_spec.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_vdev.c_construct_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@VDEV_TYPE_SPARE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"invalid vdev specification: 'spare' can be specified only once\0A\00", align 1
@VDEV_TYPE_LOG = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"invalid vdev specification: 'log' can be specified only once\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i8* null, align 8
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i8* null, align 8
@VDEV_TYPE_L2CACHE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"invalid vdev specification: 'cache' can be specified only once\0A\00", align 1
@VDEV_TYPE_MIRROR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"invalid vdev specification: unsupported '%s' device: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"invalid vdev specification: %s requires at least %d devices\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"invalid vdev specification: %s supports no more than %d devices\0A\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ALLOCATION_BIAS = common dso_local global i32 0, align 4
@VDEV_ALLOC_BIAS_LOG = common dso_local global i8* null, align 8
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [74 x i8] c"invalid vdev specification: at least one toplevel vdev must be specified\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"invalid vdev specification: log requires at least 1 device\0A\00", align 1
@VDEV_TYPE_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @construct_spec(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32**, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i32** null, i32*** %9, align 8
  store i32 0, i32* %13, align 4
  store i32** null, i32*** %10, align 8
  store i32** null, i32*** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %22, align 4
  store i32 %27, i32* %21, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %23, align 4
  store i32* null, i32** %7, align 8
  br label %29

29:                                               ; preds = %439, %287, %279, %94, %80, %64, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %446

32:                                               ; preds = %29
  store i32* null, i32** %8, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @is_grouping(i8* %35, i32* %14, i32* %15)
  store i8* %36, i8** %19, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %384

38:                                               ; preds = %32
  store i32** null, i32*** %24, align 8
  store i32 0, i32* %26, align 4
  %39 = load i8*, i8** %19, align 8
  %40 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32**, i32*** %10, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48)
  br label %514

50:                                               ; preds = %43
  %51 = load i32, i32* @B_FALSE, align 4
  store i32 %51, i32* %22, align 4
  store i32 %51, i32* %21, align 4
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %50, %38
  %53 = load i8*, i8** %19, align 8
  %54 = load i8*, i8** @VDEV_TYPE_LOG, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* %62)
  br label %514

64:                                               ; preds = %57
  %65 = load i8*, i8** @B_TRUE, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %23, align 4
  %67 = load i8*, i8** @B_TRUE, align 8
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* @B_FALSE, align 4
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* @B_FALSE, align 4
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %6, align 8
  br label %29

75:                                               ; preds = %52
  %76 = load i8*, i8** %19, align 8
  %77 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8*, i8** @B_TRUE, align 8
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* @B_FALSE, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* @B_FALSE, align 4
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %5, align 4
  %87 = load i8**, i8*** %6, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i32 1
  store i8** %88, i8*** %6, align 8
  br label %29

89:                                               ; preds = %75
  %90 = load i8*, i8** %19, align 8
  %91 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  %92 = call i64 @strcmp(i8* %90, i8* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i8*, i8** @B_TRUE, align 8
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* @B_FALSE, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* @B_FALSE, align 4
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %5, align 4
  %101 = load i8**, i8*** %6, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %6, align 8
  br label %29

103:                                              ; preds = %89
  %104 = load i8*, i8** %19, align 8
  %105 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  %106 = call i64 @strcmp(i8* %104, i8* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32**, i32*** %11, align 8
  %110 = icmp ne i32** %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* @stderr, align 4
  %113 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* %113)
  br label %514

115:                                              ; preds = %108
  %116 = load i32, i32* @B_FALSE, align 4
  store i32 %116, i32* %22, align 4
  store i32 %116, i32* %21, align 4
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %115, %103
  %118 = load i32, i32* %20, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %22, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %123, %120, %117
  %127 = load i8*, i8** %19, align 8
  %128 = load i8*, i8** @VDEV_TYPE_MIRROR, align 8
  %129 = call i64 @strcmp(i8* %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %138 = load i8*, i8** %19, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* %133, i8* %137, i8* %138)
  br label %514

140:                                              ; preds = %126
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %143

143:                                              ; preds = %140, %123
  store i32 1, i32* %25, align 4
  br label %144

144:                                              ; preds = %206, %143
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %209

148:                                              ; preds = %144
  %149 = load i8**, i8*** %6, align 8
  %150 = load i32, i32* %25, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @is_grouping(i8* %153, i32* null, i32* null)
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %209

157:                                              ; preds = %148
  %158 = load i32, i32* %26, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %26, align 4
  %160 = load i32**, i32*** %24, align 8
  %161 = load i32, i32* %26, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 8
  %164 = trunc i64 %163 to i32
  %165 = call i32** @realloc(i32** %160, i32 %164)
  store i32** %165, i32*** %24, align 8
  %166 = load i32**, i32*** %24, align 8
  %167 = icmp eq i32** %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = call i32 (...) @zpool_no_memory()
  br label %170

170:                                              ; preds = %168, %157
  %171 = load i32*, i32** %4, align 8
  %172 = load i8**, i8*** %6, align 8
  %173 = load i32, i32* %25, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @B_FALSE, align 4
  %178 = call i32* @make_leaf_vdev(i32* %171, i8* %176, i32 %177)
  store i32* %178, i32** %8, align 8
  %179 = icmp eq i32* %178, null
  br i1 %179, label %180, label %199

180:                                              ; preds = %170
  store i32 0, i32* %25, align 4
  br label %181

181:                                              ; preds = %193, %180
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* %26, align 4
  %184 = sub nsw i32 %183, 1
  %185 = icmp slt i32 %182, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load i32**, i32*** %24, align 8
  %188 = load i32, i32* %25, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @nvlist_free(i32* %191)
  br label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %25, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %25, align 4
  br label %181

196:                                              ; preds = %181
  %197 = load i32**, i32*** %24, align 8
  %198 = call i32 @free(i32** %197)
  br label %514

199:                                              ; preds = %170
  %200 = load i32*, i32** %8, align 8
  %201 = load i32**, i32*** %24, align 8
  %202 = load i32, i32* %26, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %201, i64 %204
  store i32* %200, i32** %205, align 8
  br label %206

206:                                              ; preds = %199
  %207 = load i32, i32* %25, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %25, align 4
  br label %144

209:                                              ; preds = %156, %144
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %209
  %214 = load i32, i32* @stderr, align 4
  %215 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %216 = load i8**, i8*** %6, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* %215, i8* %218, i32 %219)
  store i32 0, i32* %25, align 4
  br label %221

221:                                              ; preds = %232, %213
  %222 = load i32, i32* %25, align 4
  %223 = load i32, i32* %26, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %221
  %226 = load i32**, i32*** %24, align 8
  %227 = load i32, i32* %25, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = call i32 @nvlist_free(i32* %230)
  br label %232

232:                                              ; preds = %225
  %233 = load i32, i32* %25, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %25, align 4
  br label %221

235:                                              ; preds = %221
  %236 = load i32**, i32*** %24, align 8
  %237 = call i32 @free(i32** %236)
  br label %514

238:                                              ; preds = %209
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %267

242:                                              ; preds = %238
  %243 = load i32, i32* @stderr, align 4
  %244 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %245 = load i8**, i8*** %6, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 0
  %247 = load i8*, i8** %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* %244, i8* %247, i32 %248)
  store i32 0, i32* %25, align 4
  br label %250

250:                                              ; preds = %261, %242
  %251 = load i32, i32* %25, align 4
  %252 = load i32, i32* %26, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = load i32**, i32*** %24, align 8
  %256 = load i32, i32* %25, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @nvlist_free(i32* %259)
  br label %261

261:                                              ; preds = %254
  %262 = load i32, i32* %25, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %25, align 4
  br label %250

264:                                              ; preds = %250
  %265 = load i32**, i32*** %24, align 8
  %266 = call i32 @free(i32** %265)
  br label %514

267:                                              ; preds = %238
  %268 = load i32, i32* %25, align 4
  %269 = load i32, i32* %5, align 4
  %270 = sub nsw i32 %269, %268
  store i32 %270, i32* %5, align 4
  %271 = load i32, i32* %25, align 4
  %272 = load i8**, i8*** %6, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds i8*, i8** %272, i64 %273
  store i8** %274, i8*** %6, align 8
  %275 = load i8*, i8** %19, align 8
  %276 = load i8*, i8** @VDEV_TYPE_SPARE, align 8
  %277 = call i64 @strcmp(i8* %275, i8* %276)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %267
  %280 = load i32**, i32*** %24, align 8
  store i32** %280, i32*** %10, align 8
  %281 = load i32, i32* %26, align 4
  store i32 %281, i32* %16, align 4
  br label %29

282:                                              ; preds = %267
  %283 = load i8*, i8** %19, align 8
  %284 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  %285 = call i64 @strcmp(i8* %283, i8* %284)
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32**, i32*** %24, align 8
  store i32** %288, i32*** %11, align 8
  %289 = load i32, i32* %26, align 4
  store i32 %289, i32* %18, align 4
  br label %29

290:                                              ; preds = %282
  %291 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %292 = call i64 @nvlist_alloc(i32** %8, i32 %291, i32 0)
  %293 = icmp eq i64 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i32 @verify(i32 %294)
  %296 = load i32*, i32** %8, align 8
  %297 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %298 = load i8*, i8** %19, align 8
  %299 = call i64 @nvlist_add_string(i32* %296, i32 %297, i8* %298)
  %300 = icmp eq i64 %299, 0
  %301 = zext i1 %300 to i32
  %302 = call i32 @verify(i32 %301)
  %303 = load i32*, i32** %8, align 8
  %304 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %305 = load i32, i32* %20, align 4
  %306 = call i64 @nvlist_add_uint64(i32* %303, i32 %304, i32 %305)
  %307 = icmp eq i64 %306, 0
  %308 = zext i1 %307 to i32
  %309 = call i32 @verify(i32 %308)
  %310 = load i32, i32* %20, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %290
  %313 = load i32*, i32** %8, align 8
  %314 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %315 = load i8*, i8** @VDEV_ALLOC_BIAS_LOG, align 8
  %316 = call i64 @nvlist_add_string(i32* %313, i32 %314, i8* %315)
  %317 = icmp eq i64 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @verify(i32 %318)
  br label %320

320:                                              ; preds = %312, %290
  %321 = load i32, i32* %21, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = load i32*, i32** %8, align 8
  %325 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %326 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  %327 = call i64 @nvlist_add_string(i32* %324, i32 %325, i8* %326)
  %328 = icmp eq i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = call i32 @verify(i32 %329)
  br label %331

331:                                              ; preds = %323, %320
  %332 = load i32, i32* %22, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %331
  %335 = load i32*, i32** %8, align 8
  %336 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %337 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  %338 = call i64 @nvlist_add_string(i32* %335, i32 %336, i8* %337)
  %339 = icmp eq i64 %338, 0
  %340 = zext i1 %339 to i32
  %341 = call i32 @verify(i32 %340)
  br label %342

342:                                              ; preds = %334, %331
  %343 = load i8*, i8** %19, align 8
  %344 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %345 = call i64 @strcmp(i8* %343, i8* %344)
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %342
  %348 = load i32*, i32** %8, align 8
  %349 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %350 = load i32, i32* %14, align 4
  %351 = sub nsw i32 %350, 1
  %352 = call i64 @nvlist_add_uint64(i32* %348, i32 %349, i32 %351)
  %353 = icmp eq i64 %352, 0
  %354 = zext i1 %353 to i32
  %355 = call i32 @verify(i32 %354)
  br label %356

356:                                              ; preds = %347, %342
  %357 = load i32*, i32** %8, align 8
  %358 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %359 = load i32**, i32*** %24, align 8
  %360 = load i32, i32* %26, align 4
  %361 = call i64 @nvlist_add_nvlist_array(i32* %357, i32 %358, i32** %359, i32 %360)
  %362 = icmp eq i64 %361, 0
  %363 = zext i1 %362 to i32
  %364 = call i32 @verify(i32 %363)
  store i32 0, i32* %25, align 4
  br label %365

365:                                              ; preds = %376, %356
  %366 = load i32, i32* %25, align 4
  %367 = load i32, i32* %26, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %379

369:                                              ; preds = %365
  %370 = load i32**, i32*** %24, align 8
  %371 = load i32, i32* %25, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = call i32 @nvlist_free(i32* %374)
  br label %376

376:                                              ; preds = %369
  %377 = load i32, i32* %25, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %25, align 4
  br label %365

379:                                              ; preds = %365
  %380 = load i32**, i32*** %24, align 8
  %381 = call i32 @free(i32** %380)
  br label %382

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %382
  br label %426

384:                                              ; preds = %32
  %385 = load i32*, i32** %4, align 8
  %386 = load i8**, i8*** %6, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 0
  %388 = load i8*, i8** %387, align 8
  %389 = load i32, i32* %20, align 4
  %390 = call i32* @make_leaf_vdev(i32* %385, i8* %388, i32 %389)
  store i32* %390, i32** %8, align 8
  %391 = icmp eq i32* %390, null
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  br label %514

393:                                              ; preds = %384
  %394 = load i32, i32* %20, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load i32, i32* %17, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %17, align 4
  br label %399

399:                                              ; preds = %396, %393
  %400 = load i32, i32* %21, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %399
  %403 = load i32*, i32** %8, align 8
  %404 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %405 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  %406 = call i64 @nvlist_add_string(i32* %403, i32 %404, i8* %405)
  %407 = icmp eq i64 %406, 0
  %408 = zext i1 %407 to i32
  %409 = call i32 @verify(i32 %408)
  br label %410

410:                                              ; preds = %402, %399
  %411 = load i32, i32* %22, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %410
  %414 = load i32*, i32** %8, align 8
  %415 = load i32, i32* @ZPOOL_CONFIG_ALLOCATION_BIAS, align 4
  %416 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  %417 = call i64 @nvlist_add_string(i32* %414, i32 %415, i8* %416)
  %418 = icmp eq i64 %417, 0
  %419 = zext i1 %418 to i32
  %420 = call i32 @verify(i32 %419)
  br label %421

421:                                              ; preds = %413, %410
  %422 = load i32, i32* %5, align 4
  %423 = add nsw i32 %422, -1
  store i32 %423, i32* %5, align 4
  %424 = load i8**, i8*** %6, align 8
  %425 = getelementptr inbounds i8*, i8** %424, i32 1
  store i8** %425, i8*** %6, align 8
  br label %426

426:                                              ; preds = %421, %383
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %13, align 4
  %429 = load i32**, i32*** %9, align 8
  %430 = load i32, i32* %13, align 4
  %431 = sext i32 %430 to i64
  %432 = mul i64 %431, 8
  %433 = trunc i64 %432 to i32
  %434 = call i32** @realloc(i32** %429, i32 %433)
  store i32** %434, i32*** %9, align 8
  %435 = load i32**, i32*** %9, align 8
  %436 = icmp eq i32** %435, null
  br i1 %436, label %437, label %439

437:                                              ; preds = %426
  %438 = call i32 (...) @zpool_no_memory()
  br label %439

439:                                              ; preds = %437, %426
  %440 = load i32*, i32** %8, align 8
  %441 = load i32**, i32*** %9, align 8
  %442 = load i32, i32* %13, align 4
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32*, i32** %441, i64 %444
  store i32* %440, i32** %445, align 8
  br label %29

446:                                              ; preds = %29
  %447 = load i32, i32* %13, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %459

449:                                              ; preds = %446
  %450 = load i32, i32* %16, align 4
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %449
  %453 = load i32, i32* %18, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %452
  %456 = load i32, i32* @stderr, align 4
  %457 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0))
  %458 = call i32 (i32, i8*, ...) @fprintf(i32 %456, i8* %457)
  br label %514

459:                                              ; preds = %452, %449, %446
  %460 = load i32, i32* %23, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %459
  %463 = load i32, i32* %17, align 4
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %462
  %466 = load i32, i32* @stderr, align 4
  %467 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %468 = call i32 (i32, i8*, ...) @fprintf(i32 %466, i8* %467)
  br label %514

469:                                              ; preds = %462, %459
  %470 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %471 = call i64 @nvlist_alloc(i32** %7, i32 %470, i32 0)
  %472 = icmp eq i64 %471, 0
  %473 = zext i1 %472 to i32
  %474 = call i32 @verify(i32 %473)
  %475 = load i32*, i32** %7, align 8
  %476 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %477 = load i8*, i8** @VDEV_TYPE_ROOT, align 8
  %478 = call i64 @nvlist_add_string(i32* %475, i32 %476, i8* %477)
  %479 = icmp eq i64 %478, 0
  %480 = zext i1 %479 to i32
  %481 = call i32 @verify(i32 %480)
  %482 = load i32*, i32** %7, align 8
  %483 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %484 = load i32**, i32*** %9, align 8
  %485 = load i32, i32* %13, align 4
  %486 = call i64 @nvlist_add_nvlist_array(i32* %482, i32 %483, i32** %484, i32 %485)
  %487 = icmp eq i64 %486, 0
  %488 = zext i1 %487 to i32
  %489 = call i32 @verify(i32 %488)
  %490 = load i32, i32* %16, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %501

492:                                              ; preds = %469
  %493 = load i32*, i32** %7, align 8
  %494 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %495 = load i32**, i32*** %10, align 8
  %496 = load i32, i32* %16, align 4
  %497 = call i64 @nvlist_add_nvlist_array(i32* %493, i32 %494, i32** %495, i32 %496)
  %498 = icmp eq i64 %497, 0
  %499 = zext i1 %498 to i32
  %500 = call i32 @verify(i32 %499)
  br label %501

501:                                              ; preds = %492, %469
  %502 = load i32, i32* %18, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %513

504:                                              ; preds = %501
  %505 = load i32*, i32** %7, align 8
  %506 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %507 = load i32**, i32*** %11, align 8
  %508 = load i32, i32* %18, align 4
  %509 = call i64 @nvlist_add_nvlist_array(i32* %505, i32 %506, i32** %507, i32 %508)
  %510 = icmp eq i64 %509, 0
  %511 = zext i1 %510 to i32
  %512 = call i32 @verify(i32 %511)
  br label %513

513:                                              ; preds = %504, %501
  br label %514

514:                                              ; preds = %513, %465, %455, %392, %264, %235, %196, %131, %111, %60, %46
  store i32 0, i32* %12, align 4
  br label %515

515:                                              ; preds = %526, %514
  %516 = load i32, i32* %12, align 4
  %517 = load i32, i32* %13, align 4
  %518 = icmp slt i32 %516, %517
  br i1 %518, label %519, label %529

519:                                              ; preds = %515
  %520 = load i32**, i32*** %9, align 8
  %521 = load i32, i32* %12, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32*, i32** %520, i64 %522
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @nvlist_free(i32* %524)
  br label %526

526:                                              ; preds = %519
  %527 = load i32, i32* %12, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %12, align 4
  br label %515

529:                                              ; preds = %515
  store i32 0, i32* %12, align 4
  br label %530

530:                                              ; preds = %541, %529
  %531 = load i32, i32* %12, align 4
  %532 = load i32, i32* %16, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %544

534:                                              ; preds = %530
  %535 = load i32**, i32*** %10, align 8
  %536 = load i32, i32* %12, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32*, i32** %535, i64 %537
  %539 = load i32*, i32** %538, align 8
  %540 = call i32 @nvlist_free(i32* %539)
  br label %541

541:                                              ; preds = %534
  %542 = load i32, i32* %12, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %12, align 4
  br label %530

544:                                              ; preds = %530
  store i32 0, i32* %12, align 4
  br label %545

545:                                              ; preds = %556, %544
  %546 = load i32, i32* %12, align 4
  %547 = load i32, i32* %18, align 4
  %548 = icmp slt i32 %546, %547
  br i1 %548, label %549, label %559

549:                                              ; preds = %545
  %550 = load i32**, i32*** %11, align 8
  %551 = load i32, i32* %12, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32*, i32** %550, i64 %552
  %554 = load i32*, i32** %553, align 8
  %555 = call i32 @nvlist_free(i32* %554)
  br label %556

556:                                              ; preds = %549
  %557 = load i32, i32* %12, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %12, align 4
  br label %545

559:                                              ; preds = %545
  %560 = load i32**, i32*** %10, align 8
  %561 = call i32 @free(i32** %560)
  %562 = load i32**, i32*** %11, align 8
  %563 = call i32 @free(i32** %562)
  %564 = load i32**, i32*** %9, align 8
  %565 = call i32 @free(i32** %564)
  %566 = load i32*, i32** %7, align 8
  ret i32* %566
}

declare dso_local i8* @is_grouping(i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @zpool_no_memory(...) #1

declare dso_local i32* @make_leaf_vdev(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
