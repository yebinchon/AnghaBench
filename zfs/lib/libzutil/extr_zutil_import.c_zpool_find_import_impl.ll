; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i32, i64, i32*, i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_26__*, i32*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, i32, i32* }

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@zpool_open_func = common dso_local global i32 0, align 4
@AVL_AFTER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_28__*)* @zpool_find_import_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zpool_find_import_impl(i32* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  store i32* null, i32** %6, align 8
  %30 = bitcast %struct.TYPE_27__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %2
  %41 = phi i1 [ true, %2 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @verify(i32 %42)
  %44 = call i32 @pthread_mutex_init(i32* %16, i32* null)
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %49, %40
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %21, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8**
  store i8** %61, i8*** %22, align 8
  %62 = load i64, i64* %21, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = call i8** @zpool_default_search_paths(i64* %21)
  store i8** %65, i8*** %22, align 8
  br label %66

66:                                               ; preds = %64, %54
  %67 = load i32*, i32** %4, align 8
  %68 = load i8**, i8*** %22, align 8
  %69 = load i64, i64* %21, align 8
  %70 = call i64 @zpool_find_import_scan(i32* %67, i32* %16, %struct.TYPE_26__** %17, i8** %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32* null, i32** %3, align 8
  br label %322

73:                                               ; preds = %66
  br label %80

74:                                               ; preds = %49
  %75 = load i32*, i32** %4, align 8
  %76 = call i64 @zpool_find_import_blkid(i32* %75, i32* %16, %struct.TYPE_26__** %17)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32* null, i32** %3, align 8
  br label %322

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %82 = call i32 @sysconf(i32 %81)
  %83 = mul nsw i32 2, %82
  %84 = call i32* @tpool_create(i32 1, i32 %83, i32 0, i32* null)
  store i32* %84, i32** %20, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %86 = call %struct.TYPE_26__* @avl_first(%struct.TYPE_26__* %85)
  store %struct.TYPE_26__* %86, %struct.TYPE_26__** %18, align 8
  br label %87

87:                                               ; preds = %95, %80
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %89 = icmp ne %struct.TYPE_26__* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32*, i32** %20, align 8
  %92 = load i32, i32* @zpool_open_func, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %94 = call i32 @tpool_dispatch(i32* %91, i32 %92, %struct.TYPE_26__* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %98 = load i32, i32* @AVL_AFTER, align 4
  %99 = call %struct.TYPE_26__* @avl_walk(%struct.TYPE_26__* %96, %struct.TYPE_26__* %97, i32 %98)
  store %struct.TYPE_26__* %99, %struct.TYPE_26__** %18, align 8
  br label %87

100:                                              ; preds = %87
  %101 = load i32*, i32** %20, align 8
  %102 = call i32 @tpool_wait(i32* %101)
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @tpool_destroy(i32* %103)
  store i8* null, i8** %19, align 8
  br label %105

105:                                              ; preds = %234, %100
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %107 = call %struct.TYPE_26__* @avl_destroy_nodes(%struct.TYPE_26__* %106, i8** %19)
  store %struct.TYPE_26__* %107, %struct.TYPE_26__** %18, align 8
  %108 = icmp ne %struct.TYPE_26__* %107, null
  br i1 %108, label %109, label %241

109:                                              ; preds = %105
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 11
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %234

114:                                              ; preds = %109
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 11
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %23, align 8
  %118 = load i32, i32* @B_TRUE, align 4
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* @B_FALSE, align 4
  store i32 %119, i32* %25, align 4
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %114
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %124, %114
  %130 = load i32*, i32** %23, align 8
  %131 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %132 = call i64 @nvlist_lookup_uint64(i32* %130, i32 %131, i64* %27)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i64, i64* %27, align 8
  %136 = load i64, i64* @POOL_STATE_SPARE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %141 = icmp eq i64 %139, %140
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i1 [ true, %134 ], [ %141, %138 ]
  br label %144

144:                                              ; preds = %142, %129
  %145 = phi i1 [ false, %129 ], [ %143, %142 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %25, align 4
  br label %147

147:                                              ; preds = %144, %124
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load i32, i32* %25, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %152
  %156 = load i32*, i32** %23, align 8
  %157 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %158 = call i64 @nvlist_lookup_string(i32* %156, i32 %157, i8** %28)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i8*, i8** %28, align 8
  %165 = call i64 @strcmp(i32* %163, i8* %164)
  %166 = icmp eq i64 %165, 0
  br label %167

167:                                              ; preds = %160, %155
  %168 = phi i1 [ false, %155 ], [ %166, %160 ]
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %24, align 4
  br label %193

170:                                              ; preds = %152, %147
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %170
  %176 = load i32, i32* %25, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %175
  %179 = load i32*, i32** %23, align 8
  %180 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %181 = call i64 @nvlist_lookup_uint64(i32* %179, i32 %180, i64* %29)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %29, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %183, %178
  %190 = phi i1 [ false, %178 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %24, align 4
  br label %192

192:                                              ; preds = %189, %175, %170
  br label %193

193:                                              ; preds = %192, %167
  %194 = load i32, i32* %24, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %231

196:                                              ; preds = %193
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  %200 = load i32, i32* @O_RDONLY, align 4
  %201 = load i32, i32* @O_EXCL, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @open(%struct.TYPE_26__* %199, i32 %202)
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %26, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %196
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %206, %196
  %212 = load i32, i32* %26, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %26, align 4
  %216 = call i32 @close(i32 %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i32*, i32** %4, align 8
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 8
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %220, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %23, align 8
  %229 = call i32 @add_config(i32* %218, %struct.TYPE_27__* %7, %struct.TYPE_26__* %221, i32 %224, i32 %227, i32* %228)
  br label %230

230:                                              ; preds = %217, %206
  br label %231

231:                                              ; preds = %230, %193
  %232 = load i32*, i32** %23, align 8
  %233 = call i32 @nvlist_free(i32* %232)
  br label %234

234:                                              ; preds = %231, %109
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %236, align 8
  %238 = call i32 @free(%struct.TYPE_26__* %237)
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %240 = call i32 @free(%struct.TYPE_26__* %239)
  br label %105

241:                                              ; preds = %105
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %243 = call i32 @avl_destroy(%struct.TYPE_26__* %242)
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %245 = call i32 @free(%struct.TYPE_26__* %244)
  %246 = call i32 @pthread_mutex_destroy(i32* %16)
  %247 = load i32*, i32** %4, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32* @get_configs(i32* %247, %struct.TYPE_27__* %7, i64 %250, i32 %253)
  store i32* %254, i32** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %255, align 8
  store %struct.TYPE_26__* %256, %struct.TYPE_26__** %8, align 8
  br label %257

257:                                              ; preds = %300, %241
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %259 = icmp ne %struct.TYPE_26__* %258, null
  br i1 %259, label %260, label %302

260:                                              ; preds = %257
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  store %struct.TYPE_26__* %263, %struct.TYPE_26__** %9, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %265, align 8
  store %struct.TYPE_26__* %266, %struct.TYPE_26__** %10, align 8
  br label %267

267:                                              ; preds = %295, %260
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %269 = icmp ne %struct.TYPE_26__* %268, null
  br i1 %269, label %270, label %297

270:                                              ; preds = %267
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  store %struct.TYPE_26__* %273, %struct.TYPE_26__** %11, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 4
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %275, align 8
  store %struct.TYPE_26__* %276, %struct.TYPE_26__** %12, align 8
  br label %277

277:                                              ; preds = %290, %270
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %279 = icmp ne %struct.TYPE_26__* %278, null
  br i1 %279, label %280, label %292

280:                                              ; preds = %277
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %282, align 8
  store %struct.TYPE_26__* %283, %struct.TYPE_26__** %13, align 8
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @nvlist_free(i32* %286)
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %289 = call i32 @free(%struct.TYPE_26__* %288)
  br label %290

290:                                              ; preds = %280
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %291, %struct.TYPE_26__** %12, align 8
  br label %277

292:                                              ; preds = %277
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %294 = call i32 @free(%struct.TYPE_26__* %293)
  br label %295

295:                                              ; preds = %292
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %296, %struct.TYPE_26__** %10, align 8
  br label %267

297:                                              ; preds = %267
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %299 = call i32 @free(%struct.TYPE_26__* %298)
  br label %300

300:                                              ; preds = %297
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %301, %struct.TYPE_26__** %8, align 8
  br label %257

302:                                              ; preds = %257
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  store %struct.TYPE_26__* %304, %struct.TYPE_26__** %14, align 8
  br label %305

305:                                              ; preds = %318, %302
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %307 = icmp ne %struct.TYPE_26__* %306, null
  br i1 %307, label %308, label %320

308:                                              ; preds = %305
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %310, align 8
  store %struct.TYPE_26__* %311, %struct.TYPE_26__** %15, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %313, align 8
  %315 = call i32 @free(%struct.TYPE_26__* %314)
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %317 = call i32 @free(%struct.TYPE_26__* %316)
  br label %318

318:                                              ; preds = %308
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  store %struct.TYPE_26__* %319, %struct.TYPE_26__** %14, align 8
  br label %305

320:                                              ; preds = %305
  %321 = load i32*, i32** %6, align 8
  store i32* %321, i32** %3, align 8
  br label %322

322:                                              ; preds = %320, %78, %72
  %323 = load i32*, i32** %3, align 8
  ret i32* %323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i8** @zpool_default_search_paths(i64*) #2

declare dso_local i64 @zpool_find_import_scan(i32*, i32*, %struct.TYPE_26__**, i8**, i64) #2

declare dso_local i64 @zpool_find_import_blkid(i32*, i32*, %struct.TYPE_26__**) #2

declare dso_local i32* @tpool_create(i32, i32, i32, i32*) #2

declare dso_local i32 @sysconf(i32) #2

declare dso_local %struct.TYPE_26__* @avl_first(%struct.TYPE_26__*) #2

declare dso_local i32 @tpool_dispatch(i32*, i32, %struct.TYPE_26__*) #2

declare dso_local %struct.TYPE_26__* @avl_walk(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #2

declare dso_local i32 @tpool_wait(i32*) #2

declare dso_local i32 @tpool_destroy(i32*) #2

declare dso_local %struct.TYPE_26__* @avl_destroy_nodes(%struct.TYPE_26__*, i8**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @open(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @add_config(i32*, %struct.TYPE_27__*, %struct.TYPE_26__*, i32, i32, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @free(%struct.TYPE_26__*) #2

declare dso_local i32 @avl_destroy(%struct.TYPE_26__*) #2

declare dso_local i32 @pthread_mutex_destroy(i32*) #2

declare dso_local i32* @get_configs(i32*, %struct.TYPE_27__*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
