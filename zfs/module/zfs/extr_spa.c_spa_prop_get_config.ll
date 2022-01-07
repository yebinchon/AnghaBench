; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_get_config.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i8*, i32, %struct.TYPE_20__, i32, %struct.TYPE_24__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i32*, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_19__ = type { i32 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPOOL_PROP_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_SIZE = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALLOCATED = common dso_local global i32 0, align 4
@ZPOOL_PROP_FREE = common dso_local global i32 0, align 4
@ZPOOL_PROP_CHECKPOINT = common dso_local global i32 0, align 4
@ZPOOL_PROP_FRAGMENTATION = common dso_local global i32 0, align 4
@ZPOOL_PROP_EXPANDSZ = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i64 0, align 8
@ZPOOL_PROP_CAPACITY = common dso_local global i32 0, align 4
@ZPOOL_PROP_DEDUPRATIO = common dso_local global i32 0, align 4
@ZPOOL_PROP_HEALTH = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPOOL_PROP_LOAD_GUID = common dso_local global i32 0, align 4
@ZPOOL_PROP_FREEING = common dso_local global i32 0, align 4
@ZPOOL_PROP_LEAKED = common dso_local global i32 0, align 4
@ZPOOL_PROP_GUID = common dso_local global i32 0, align 4
@ZPOOL_PROP_COMMENT = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@ZPOOL_PROP_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@zfs_max_recordsize = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@ZPOOL_PROP_MAXDNODESIZE = common dso_local global i32 0, align 4
@DNODE_MAX_SIZE = common dso_local global i32 0, align 4
@DNODE_MIN_SIZE = common dso_local global i32 0, align 4
@ZPOOL_PROP_CACHEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@spa_config_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32**)* @spa_prop_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_prop_get_config(%struct.TYPE_22__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = call i32* @spa_normal_class(%struct.TYPE_22__* %21)
  store i32* %22, i32** %13, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  %25 = call i32 @MUTEX_HELD(i32* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = icmp ne %struct.TYPE_21__* %27, null
  br i1 %28, label %29, label %173

29:                                               ; preds = %2
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @metaslab_class_get_alloc(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = call i32* @spa_special_class(%struct.TYPE_22__* %32)
  %34 = call i32 @metaslab_class_get_alloc(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = call i32* @spa_dedup_class(%struct.TYPE_22__* %37)
  %39 = call i32 @metaslab_class_get_alloc(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @metaslab_class_get_space(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = call i32* @spa_special_class(%struct.TYPE_22__* %44)
  %46 = call i32 @metaslab_class_get_space(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = call i32* @spa_dedup_class(%struct.TYPE_22__* %49)
  %51 = call i32 @metaslab_class_get_space(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32**, i32*** %4, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ZPOOL_PROP_NAME, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = call i8* @spa_name(%struct.TYPE_22__* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @spa_prop_add_list(i32* %55, i32 %56, i8* %58, i32 0, i32 %59)
  %61 = load i32**, i32*** %4, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @ZPOOL_PROP_SIZE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @spa_prop_add_list(i32* %62, i32 %63, i8* null, i32 %64, i32 %65)
  %67 = load i32**, i32*** %4, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @ZPOOL_PROP_ALLOCATED, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @spa_prop_add_list(i32* %68, i32 %69, i8* null, i32 %70, i32 %71)
  %73 = load i32**, i32*** %4, align 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @ZPOOL_PROP_FREE, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @spa_prop_add_list(i32* %74, i32 %75, i8* null, i32 %78, i32 %79)
  %81 = load i32**, i32*** %4, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @ZPOOL_PROP_CHECKPOINT, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @spa_prop_add_list(i32* %82, i32 %83, i8* null, i32 %87, i32 %88)
  %90 = load i32**, i32*** %4, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @ZPOOL_PROP_FRAGMENTATION, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @metaslab_class_fragmentation(i32* %93)
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @spa_prop_add_list(i32* %91, i32 %92, i8* null, i32 %94, i32 %95)
  %97 = load i32**, i32*** %4, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @ZPOOL_PROP_EXPANDSZ, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = call i32 @metaslab_class_expandable_space(i32* %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @spa_prop_add_list(i32* %98, i32 %99, i8* null, i32 %101, i32 %102)
  %104 = load i32**, i32*** %4, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = call i64 @spa_mode(%struct.TYPE_22__* %107)
  %109 = load i64, i64* @FREAD, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @spa_prop_add_list(i32* %105, i32 %106, i8* null, i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %29
  br label %122

117:                                              ; preds = %29
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %118, 100
  %120 = load i32, i32* %7, align 4
  %121 = sdiv i32 %119, %120
  br label %122

122:                                              ; preds = %117, %116
  %123 = phi i32 [ 0, %116 ], [ %121, %117 ]
  store i32 %123, i32* %9, align 4
  %124 = load i32**, i32*** %4, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @ZPOOL_PROP_CAPACITY, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @spa_prop_add_list(i32* %125, i32 %126, i8* null, i32 %127, i32 %128)
  %130 = load i32**, i32*** %4, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ZPOOL_PROP_DEDUPRATIO, align 4
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %134 = call i32 @ddt_get_pool_dedup_ratio(%struct.TYPE_22__* %133)
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @spa_prop_add_list(i32* %131, i32 %132, i8* null, i32 %134, i32 %135)
  %137 = load i32**, i32*** %4, align 8
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @ZPOOL_PROP_HEALTH, align 4
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @spa_prop_add_list(i32* %138, i32 %139, i8* null, i32 %142, i32 %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = call i32 @spa_version(%struct.TYPE_22__* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %149 = call i32 @zpool_prop_default_numeric(i32 %148)
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %122
  %152 = load i32**, i32*** %4, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @ZPROP_SRC_DEFAULT, align 4
  %157 = call i32 @spa_prop_add_list(i32* %153, i32 %154, i8* null, i32 %155, i32 %156)
  br label %165

158:                                              ; preds = %122
  %159 = load i32**, i32*** %4, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %164 = call i32 @spa_prop_add_list(i32* %160, i32 %161, i8* null, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %158, %151
  %166 = load i32**, i32*** %4, align 8
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @ZPOOL_PROP_LOAD_GUID, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = call i32 @spa_load_guid(%struct.TYPE_22__* %169)
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @spa_prop_add_list(i32* %167, i32 %168, i8* null, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %165, %2
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = icmp ne %struct.TYPE_24__* %174, null
  br i1 %175, label %176, label %223

176:                                              ; preds = %173
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load i32**, i32*** %4, align 8
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @ZPOOL_PROP_FREEING, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = call %struct.TYPE_19__* @dsl_dir_phys(i32* %187)
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @spa_prop_add_list(i32* %183, i32 %184, i8* null, i32 %190, i32 %191)
  br label %199

193:                                              ; preds = %176
  %194 = load i32**, i32*** %4, align 8
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @ZPOOL_PROP_FREEING, align 4
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @spa_prop_add_list(i32* %195, i32 %196, i8* null, i32 0, i32 %197)
  br label %199

199:                                              ; preds = %193, %181
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %199
  %205 = load i32**, i32*** %4, align 8
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* @ZPOOL_PROP_LEAKED, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call %struct.TYPE_19__* @dsl_dir_phys(i32* %210)
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @spa_prop_add_list(i32* %206, i32 %207, i8* null, i32 %213, i32 %214)
  br label %222

216:                                              ; preds = %199
  %217 = load i32**, i32*** %4, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @ZPOOL_PROP_LEAKED, align 4
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @spa_prop_add_list(i32* %218, i32 %219, i8* null, i32 0, i32 %220)
  br label %222

222:                                              ; preds = %216, %204
  br label %223

223:                                              ; preds = %222, %173
  %224 = load i32**, i32*** %4, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* @ZPOOL_PROP_GUID, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %228 = call i32 @spa_guid(%struct.TYPE_22__* %227)
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @spa_prop_add_list(i32* %225, i32 %226, i8* null, i32 %228, i32 %229)
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %244

235:                                              ; preds = %223
  %236 = load i32**, i32*** %4, align 8
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @ZPOOL_PROP_COMMENT, align 4
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %243 = call i32 @spa_prop_add_list(i32* %237, i32 %238, i8* %241, i32 0, i32 %242)
  br label %244

244:                                              ; preds = %235, %223
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %258

249:                                              ; preds = %244
  %250 = load i32**, i32*** %4, align 8
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %257 = call i32 @spa_prop_add_list(i32* %251, i32 %252, i8* %255, i32 0, i32 %256)
  br label %258

258:                                              ; preds = %249, %244
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %260 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %261 = call i64 @spa_feature_is_enabled(%struct.TYPE_22__* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load i32**, i32*** %4, align 8
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @ZPOOL_PROP_MAXBLOCKSIZE, align 4
  %267 = load i32, i32* @zfs_max_recordsize, align 4
  %268 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %269 = call i32 @MIN(i32 %267, i32 %268)
  %270 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %271 = call i32 @spa_prop_add_list(i32* %265, i32 %266, i8* null, i32 %269, i32 %270)
  br label %279

272:                                              ; preds = %258
  %273 = load i32**, i32*** %4, align 8
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* @ZPOOL_PROP_MAXBLOCKSIZE, align 4
  %276 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %277 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %278 = call i32 @spa_prop_add_list(i32* %274, i32 %275, i8* null, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %272, %263
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %281 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %282 = call i64 @spa_feature_is_enabled(%struct.TYPE_22__* %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load i32**, i32*** %4, align 8
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* @ZPOOL_PROP_MAXDNODESIZE, align 4
  %288 = load i32, i32* @DNODE_MAX_SIZE, align 4
  %289 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %290 = call i32 @spa_prop_add_list(i32* %286, i32 %287, i8* null, i32 %288, i32 %289)
  br label %298

291:                                              ; preds = %279
  %292 = load i32**, i32*** %4, align 8
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* @ZPOOL_PROP_MAXDNODESIZE, align 4
  %295 = load i32, i32* @DNODE_MIN_SIZE, align 4
  %296 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %297 = call i32 @spa_prop_add_list(i32* %293, i32 %294, i8* null, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %291, %284
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 2
  %301 = call %struct.TYPE_23__* @list_head(i32* %300)
  store %struct.TYPE_23__* %301, %struct.TYPE_23__** %12, align 8
  %302 = icmp ne %struct.TYPE_23__* %301, null
  br i1 %302, label %303, label %332

303:                                              ; preds = %298
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp eq i8* %306, null
  br i1 %307, label %308, label %314

308:                                              ; preds = %303
  %309 = load i32**, i32*** %4, align 8
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %312 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %313 = call i32 @spa_prop_add_list(i32* %310, i32 %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %312)
  br label %331

314:                                              ; preds = %303
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* @spa_config_path, align 4
  %319 = call i64 @strcmp(i8* %317, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %330

321:                                              ; preds = %314
  %322 = load i32**, i32*** %4, align 8
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %329 = call i32 @spa_prop_add_list(i32* %323, i32 %324, i8* %327, i32 0, i32 %328)
  br label %330

330:                                              ; preds = %321, %314
  br label %331

331:                                              ; preds = %330, %308
  br label %332

332:                                              ; preds = %331, %298
  ret void
}

declare dso_local i32* @spa_normal_class(%struct.TYPE_22__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @metaslab_class_get_alloc(i32*) #1

declare dso_local i32* @spa_special_class(%struct.TYPE_22__*) #1

declare dso_local i32* @spa_dedup_class(%struct.TYPE_22__*) #1

declare dso_local i32 @metaslab_class_get_space(i32*) #1

declare dso_local i32 @spa_prop_add_list(i32*, i32, i8*, i32, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_22__*) #1

declare dso_local i32 @metaslab_class_fragmentation(i32*) #1

declare dso_local i32 @metaslab_class_expandable_space(i32*) #1

declare dso_local i64 @spa_mode(%struct.TYPE_22__*) #1

declare dso_local i32 @ddt_get_pool_dedup_ratio(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_version(%struct.TYPE_22__*) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local i32 @spa_load_guid(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @spa_guid(%struct.TYPE_22__*) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_23__* @list_head(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
