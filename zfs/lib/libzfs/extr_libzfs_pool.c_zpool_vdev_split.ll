; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_split.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_vdev_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i32* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_17__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_vdev_split.zc = private unnamed_addr constant %struct.TYPE_15__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@B_FALSE = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unable to split %s\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Internal error: unable to retrieve pool configuration\0A\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"property %s can only be set at import time\00", align 1
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Source pool is missing vdev tree\00", align 1
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i8* null, align 8
@VDEV_TYPE_MIRROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Source pool must be composed only of mirrors\0A\00", align 1
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"Device list must include at most one disk from each mirror\00", align 1
@VDEV_TYPE_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_EXPORT_AFTER_SPLIT = common dso_local global i32 0, align 4
@ZFS_IOC_VDEV_SPLIT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_split(%struct.TYPE_14__* %0, i8* %1, i32** %2, i32* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_17__, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32**, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = bitcast %struct.TYPE_16__* %8 to { i32, i64 }*
  %44 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 0
  store i32 %4, i32* %44, align 8
  %45 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %43, i32 0, i32 1
  store i64 %5, i64* %45, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  %46 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.TYPE_15__* @__const.zpool_vdev_split.zc to i8*), i64 24, i1 false)
  store i32* null, i32** %19, align 8
  store i32** null, i32*** %20, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %28, align 8
  %50 = load i8*, i8** @B_FALSE, align 8
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %30, align 4
  %52 = load i8*, i8** @B_FALSE, align 8
  store i8* %52, i8** %31, align 8
  %53 = load i8*, i8** @B_TRUE, align 8
  store i8* %53, i8** %32, align 8
  store i32 0, i32* %33, align 4
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %55 = load i32, i32* @TEXT_DOMAIN, align 4
  %56 = call i8* @dgettext(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %54, i32 1024, i8* %56, i8* %59)
  %61 = load i32*, i32** %28, align 8
  %62 = load i8*, i8** @B_FALSE, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @zpool_name_valid(i32* %61, i8* %62, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %6
  %67 = load i32*, i32** %28, align 8
  %68 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %69 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %70 = call i32 @zfs_error(i32* %67, i32 %68, i8* %69)
  store i32 %70, i32* %7, align 4
  br label %471

71:                                               ; preds = %6
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = call i32* @zpool_get_config(%struct.TYPE_14__* %72, i32* null)
  store i32* %73, i32** %16, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @fprintf(i32 %76, i8* %77)
  store i32 -1, i32* %7, align 4
  br label %471

79:                                               ; preds = %71
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %82 = call i64 @nvlist_lookup_nvlist(i32* %80, i32 %81, i32** %15)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @verify(i32 %84)
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %88 = call i64 @nvlist_lookup_uint64(i32* %86, i32 %87, i32* %29)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %129

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %96 = load i8*, i8** @B_FALSE, align 8
  store i8* %96, i8** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %98 = load i8*, i8** @B_TRUE, align 8
  store i8* %98, i8** %97, align 8
  %99 = load i32*, i32** %28, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %29, align 4
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %106 = bitcast %struct.TYPE_17__* %34 to { i8*, i8* }*
  %107 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %106, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32* @zpool_valid_proplist(i32* %99, i8* %102, i32* %103, i32 %104, i8* %108, i8* %110, i8* %105)
  store i32* %111, i32** %21, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  store i32 -1, i32* %7, align 4
  br label %471

114:                                              ; preds = %94
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %117 = call i32 @zpool_prop_to_name(i32 %116)
  %118 = call i64 @nvlist_lookup_uint64(i32* %115, i32 %117, i32* %30)
  %119 = load i32, i32* %30, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32*, i32** %28, align 8
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %126 = call i32 @zpool_prop_to_name(i32 %125)
  %127 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %122, i8* %124, i32 %126)
  store i32 -1, i32* %7, align 4
  br label %471

128:                                              ; preds = %114
  br label %129

129:                                              ; preds = %128, %79
  %130 = load i32*, i32** %15, align 8
  %131 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %132 = call i64 @nvlist_lookup_nvlist_array(i32* %130, i32 %131, i32*** %17, i32* %23)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32*, i32** %28, align 8
  %136 = load i32, i32* @TEXT_DOMAIN, align 4
  %137 = call i8* @dgettext(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %138 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %135, i8* %137)
  %139 = load i32*, i32** %21, align 8
  %140 = call i32 @nvlist_free(i32* %139)
  store i32 -1, i32* %7, align 4
  br label %471

141:                                              ; preds = %129
  %142 = load i32*, i32** %28, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = call i32** @zfs_alloc(i32* %142, i32 %146)
  store i32** %147, i32*** %20, align 8
  store i32 0, i32* %26, align 4
  %148 = load i32**, i32*** %11, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %141
  %152 = load i32**, i32*** %11, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %155 = call i64 @nvlist_lookup_nvlist_array(i32* %153, i32 %154, i32*** %18, i32* %24)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151, %141
  store i32 0, i32* %24, align 4
  br label %158

158:                                              ; preds = %157, %151
  store i32 0, i32* %22, align 4
  br label %159

159:                                              ; preds = %288, %158
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %291

163:                                              ; preds = %159
  %164 = load i8*, i8** @B_FALSE, align 8
  %165 = ptrtoint i8* %164 to i32
  store i32 %165, i32* %35, align 4
  %166 = load i8*, i8** @B_FALSE, align 8
  %167 = ptrtoint i8* %166 to i32
  store i32 %167, i32* %36, align 4
  %168 = load i32**, i32*** %17, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %174 = call i64 @nvlist_lookup_uint64(i32* %172, i32 %173, i32* %35)
  %175 = load i32**, i32*** %17, align 8
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %181 = call i64 @nvlist_lookup_uint64(i32* %179, i32 %180, i32* %36)
  %182 = load i32, i32* %35, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %163
  %185 = load i32, i32* %36, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %217

187:                                              ; preds = %184, %163
  %188 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %189 = call i64 @nvlist_alloc(i32** %39, i32 %188, i32 0)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %425

192:                                              ; preds = %187
  %193 = load i32*, i32** %39, align 8
  %194 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %195 = load i8*, i8** @VDEV_TYPE_HOLE, align 8
  %196 = call i64 @nvlist_add_string(i32* %193, i32 %194, i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  br label %425

199:                                              ; preds = %192
  %200 = load i32*, i32** %39, align 8
  %201 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %202 = call i64 @nvlist_add_uint64(i32* %200, i32 %201, i32 1)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %425

205:                                              ; preds = %199
  %206 = load i32, i32* %25, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* %26, align 4
  store i32 %209, i32* %25, align 4
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i32*, i32** %39, align 8
  %212 = load i32**, i32*** %20, align 8
  %213 = load i32, i32* %26, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %26, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32*, i32** %212, i64 %215
  store i32* %211, i32** %216, align 8
  br label %288

217:                                              ; preds = %184
  store i32 0, i32* %25, align 4
  %218 = load i32**, i32*** %17, align 8
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %224 = call i64 @nvlist_lookup_string(i32* %222, i32 %223, i8** %37)
  %225 = icmp eq i64 %224, 0
  %226 = zext i1 %225 to i32
  %227 = call i32 @verify(i32 %226)
  %228 = load i8*, i8** %37, align 8
  %229 = load i32, i32* @VDEV_TYPE_MIRROR, align 4
  %230 = call i64 @strcmp(i8* %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %217
  %233 = load i32*, i32** %28, align 8
  %234 = load i32, i32* @TEXT_DOMAIN, align 4
  %235 = call i8* @dgettext(i32 %234, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %236 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %233, i8* %235)
  %237 = load i32*, i32** %28, align 8
  %238 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %239 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %240 = call i32 @zfs_error(i32* %237, i32 %238, i8* %239)
  store i32 %240, i32* %33, align 4
  br label %425

241:                                              ; preds = %217
  %242 = load i32**, i32*** %17, align 8
  %243 = load i32, i32* %22, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %248 = call i64 @nvlist_lookup_nvlist_array(i32* %246, i32 %247, i32*** %38, i32* %40)
  %249 = icmp eq i64 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i32 @verify(i32 %250)
  %252 = load i32, i32* %24, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %270

254:                                              ; preds = %241
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = load i32**, i32*** %38, align 8
  %257 = load i32, i32* %40, align 4
  %258 = load i32**, i32*** %18, align 8
  %259 = load i32, i32* %24, align 4
  %260 = call i32 @find_vdev_entry(%struct.TYPE_14__* %255, i32** %256, i32 %257, i32** %258, i32 %259)
  store i32 %260, i32* %41, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %254
  %263 = load i32**, i32*** %38, align 8
  %264 = load i32, i32* %41, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  store i32* %267, i32** %39, align 8
  %268 = load i32, i32* %27, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %27, align 4
  br label %277

270:                                              ; preds = %254, %241
  %271 = load i32**, i32*** %38, align 8
  %272 = load i32, i32* %40, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %271, i64 %274
  %276 = load i32*, i32** %275, align 8
  store i32* %276, i32** %39, align 8
  br label %277

277:                                              ; preds = %270, %262
  %278 = load i32*, i32** %39, align 8
  %279 = load i32**, i32*** %20, align 8
  %280 = load i32, i32* %26, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %26, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32*, i32** %279, i64 %282
  %284 = call i64 @nvlist_dup(i32* %278, i32** %283, i32 0)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %425

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287, %210
  %289 = load i32, i32* %22, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %22, align 4
  br label %159

291:                                              ; preds = %159
  %292 = load i32, i32* %27, align 4
  %293 = load i32, i32* %24, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %304

295:                                              ; preds = %291
  %296 = load i32*, i32** %28, align 8
  %297 = load i32, i32* @TEXT_DOMAIN, align 4
  %298 = call i8* @dgettext(i32 %297, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0))
  %299 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %296, i8* %298)
  %300 = load i32*, i32** %28, align 8
  %301 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %302 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %303 = call i32 @zfs_error(i32* %300, i32 %301, i8* %302)
  store i32 %303, i32* %33, align 4
  br label %425

304:                                              ; preds = %291
  %305 = load i32**, i32*** %11, align 8
  %306 = load i32*, i32** %305, align 8
  %307 = icmp eq i32* %306, null
  br i1 %307, label %308, label %324

308:                                              ; preds = %304
  %309 = load i32**, i32*** %11, align 8
  %310 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %311 = call i64 @nvlist_alloc(i32** %309, i32 %310, i32 0)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %425

314:                                              ; preds = %308
  %315 = load i8*, i8** @B_TRUE, align 8
  store i8* %315, i8** %31, align 8
  %316 = load i32**, i32*** %11, align 8
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %319 = load i8*, i8** @VDEV_TYPE_ROOT, align 8
  %320 = call i64 @nvlist_add_string(i32* %317, i32 %318, i8* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %314
  br label %425

323:                                              ; preds = %314
  br label %332

324:                                              ; preds = %304
  %325 = load i32**, i32*** %11, align 8
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %328 = call i64 @nvlist_remove_all(i32* %326, i32 %327)
  %329 = icmp eq i64 %328, 0
  %330 = zext i1 %329 to i32
  %331 = call i32 @verify(i32 %330)
  br label %332

332:                                              ; preds = %324, %323
  %333 = load i32**, i32*** %11, align 8
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %336 = load i32**, i32*** %20, align 8
  %337 = load i32, i32* %25, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %332
  %340 = load i32, i32* %26, align 4
  br label %343

341:                                              ; preds = %332
  %342 = load i32, i32* %25, align 4
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i32 [ %340, %339 ], [ %342, %341 ]
  %345 = call i64 @nvlist_add_nvlist_array(i32* %334, i32 %335, i32** %336, i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %343
  br label %425

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %348
  %353 = load i8*, i8** @B_FALSE, align 8
  store i8* %353, i8** %32, align 8
  %354 = load i8*, i8** @B_FALSE, align 8
  store i8* %354, i8** %31, align 8
  br label %425

355:                                              ; preds = %348
  %356 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %357 = call i64 @nvlist_alloc(i32** %19, i32 %356, i32 0)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  br label %425

360:                                              ; preds = %355
  %361 = load i32*, i32** %19, align 8
  %362 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %363 = load i32**, i32*** %11, align 8
  %364 = load i32*, i32** %363, align 8
  %365 = call i64 @nvlist_add_nvlist(i32* %361, i32 %362, i32* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %379, label %367

367:                                              ; preds = %360
  %368 = load i32*, i32** %19, align 8
  %369 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %370 = load i8*, i8** %10, align 8
  %371 = call i64 @nvlist_add_string(i32* %368, i32 %369, i8* %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %379, label %373

373:                                              ; preds = %367
  %374 = load i32*, i32** %19, align 8
  %375 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %376 = load i32, i32* %29, align 4
  %377 = call i64 @nvlist_add_uint64(i32* %374, i32 %375, i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %373, %367, %360
  br label %425

380:                                              ; preds = %373
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %380
  %385 = load i32, i32* @ZPOOL_EXPORT_AFTER_SPLIT, align 4
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store i32 %385, i32* %386, align 8
  br label %387

387:                                              ; preds = %384, %380
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 @strlcpy(i32 %389, i8* %392, i32 4)
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load i8*, i8** %10, align 8
  %397 = call i32 @strlcpy(i32 %395, i8* %396, i32 4)
  %398 = load i32*, i32** %28, align 8
  %399 = load i32*, i32** %19, align 8
  %400 = call i64 @zcmd_write_conf_nvlist(i32* %398, %struct.TYPE_15__* %13, i32* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %387
  br label %425

403:                                              ; preds = %387
  %404 = load i32*, i32** %21, align 8
  %405 = icmp ne i32* %404, null
  br i1 %405, label %406, label %412

406:                                              ; preds = %403
  %407 = load i32*, i32** %28, align 8
  %408 = load i32*, i32** %21, align 8
  %409 = call i64 @zcmd_write_src_nvlist(i32* %407, %struct.TYPE_15__* %13, i32* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %406
  br label %425

412:                                              ; preds = %406, %403
  %413 = load i32*, i32** %28, align 8
  %414 = load i32, i32* @ZFS_IOC_VDEV_SPLIT, align 4
  %415 = call i64 @zfs_ioctl(i32* %413, i32 %414, %struct.TYPE_15__* %13)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %412
  %418 = load i32*, i32** %28, align 8
  %419 = load i32, i32* @errno, align 4
  %420 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %421 = call i32 @zpool_standard_error(i32* %418, i32 %419, i8* %420)
  store i32 %421, i32* %33, align 4
  br label %425

422:                                              ; preds = %412
  %423 = load i8*, i8** @B_FALSE, align 8
  store i8* %423, i8** %31, align 8
  %424 = load i8*, i8** @B_FALSE, align 8
  store i8* %424, i8** %32, align 8
  br label %425

425:                                              ; preds = %422, %417, %411, %402, %379, %359, %352, %347, %322, %313, %295, %286, %232, %204, %198, %191
  %426 = load i32**, i32*** %20, align 8
  %427 = icmp ne i32** %426, null
  br i1 %427, label %428, label %446

428:                                              ; preds = %425
  store i32 0, i32* %42, align 4
  br label %429

429:                                              ; preds = %440, %428
  %430 = load i32, i32* %42, align 4
  %431 = load i32, i32* %26, align 4
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %443

433:                                              ; preds = %429
  %434 = load i32**, i32*** %20, align 8
  %435 = load i32, i32* %42, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32*, i32** %434, i64 %436
  %438 = load i32*, i32** %437, align 8
  %439 = call i32 @nvlist_free(i32* %438)
  br label %440

440:                                              ; preds = %433
  %441 = load i32, i32* %42, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %42, align 4
  br label %429

443:                                              ; preds = %429
  %444 = load i32**, i32*** %20, align 8
  %445 = call i32 @free(i32** %444)
  br label %446

446:                                              ; preds = %443, %425
  %447 = call i32 @zcmd_free_nvlists(%struct.TYPE_15__* %13)
  %448 = load i32*, i32** %21, align 8
  %449 = call i32 @nvlist_free(i32* %448)
  %450 = load i32*, i32** %19, align 8
  %451 = call i32 @nvlist_free(i32* %450)
  %452 = load i8*, i8** %31, align 8
  %453 = icmp ne i8* %452, null
  br i1 %453, label %454, label %459

454:                                              ; preds = %446
  %455 = load i32**, i32*** %11, align 8
  %456 = load i32*, i32** %455, align 8
  %457 = call i32 @nvlist_free(i32* %456)
  %458 = load i32**, i32*** %11, align 8
  store i32* null, i32** %458, align 8
  br label %459

459:                                              ; preds = %454, %446
  %460 = load i32, i32* %33, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %459
  %463 = load i32, i32* %33, align 4
  store i32 %463, i32* %7, align 4
  br label %471

464:                                              ; preds = %459
  %465 = load i8*, i8** %32, align 8
  %466 = icmp ne i8* %465, null
  br i1 %466, label %467, label %470

467:                                              ; preds = %464
  %468 = load i32*, i32** %28, align 8
  %469 = call i32 @no_memory(i32* %468)
  store i32 %469, i32* %7, align 4
  br label %471

470:                                              ; preds = %464
  store i32 0, i32* %7, align 4
  br label %471

471:                                              ; preds = %470, %467, %462, %134, %121, %113, %75, %66
  %472 = load i32, i32* %7, align 4
  ret i32 %472
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i8*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32* @zpool_get_config(%struct.TYPE_14__*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @zpool_prop_to_name(i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32** @zfs_alloc(i32*, i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @find_vdev_entry(%struct.TYPE_14__*, i32**, i32, i32**, i32) #2

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #2

declare dso_local i64 @nvlist_remove_all(i32*, i32) #2

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_15__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @free(i32**) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_15__*) #2

declare dso_local i32 @no_memory(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
