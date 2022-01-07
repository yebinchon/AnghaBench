; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_zpool.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_zpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0ACached configuration:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0AUberblock:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RANGE_SEG64 = common dso_local global i32 0, align 4
@mos_refd_objs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Deferred frees\00", align 1
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Pool snapshot frees\00", align 1
@SPA_FEATURE_DEVICE_REMOVAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Pool obsolete blocks\00", align 1
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Pool dataset frees\00", align 1
@SPA_FEATURES = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@global_feature_count = common dso_local global i64* null, align 8
@SPA_FEATURE_REDACTION_BOOKMARKS = common dso_local global i64 0, align 8
@SPA_FEATURE_BOOKMARK_WRITTEN = common dso_local global i64 0, align 8
@SPA_FEATURE_LIVELIST = common dso_local global i64 0, align 8
@dump_one_objset = common dso_local global i32 0, align 4
@DS_FIND_SNAPSHOTS = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_27__* null, align 8
@ZFEATURE_FLAG_PER_DATASET = common dso_local global i32 0, align 4
@dataset_feature_count = common dso_local global i64* null, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [63 x i8] c"%s feature refcount mismatch: %lld consumers != %lld refcount\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Verified %s feature refcount of %llu is correct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*)* @dump_zpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_zpool(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = call %struct.TYPE_29__* @spa_get_dsl(%struct.TYPE_28__* %10)
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i32*, i32** @dump_opt, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 83
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %18 = call i32 @dump_simulated_ddt(%struct.TYPE_28__* %17)
  br label %352

19:                                               ; preds = %1
  %20 = load i32*, i32** @dump_opt, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 101
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** @dump_opt, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 67
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dump_nvlist(i32 %33, i32 8)
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = load i32*, i32** @dump_opt, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 67
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %42 = call i32 @dump_config(%struct.TYPE_28__* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32*, i32** @dump_opt, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 117
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 4
  %51 = call i32 @dump_uberblock(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32*, i32** @dump_opt, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 68
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %59 = call i32 @dump_all_ddts(%struct.TYPE_28__* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** @dump_opt, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 100
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** @dump_opt, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 109
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %72 = call i32 @dump_metaslabs(%struct.TYPE_28__* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32*, i32** @dump_opt, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 77
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %80 = call i32 @dump_metaslab_groups(%struct.TYPE_28__* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32*, i32** @dump_opt, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 100
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** @dump_opt, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 109
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %93 = call i32 @dump_log_spacemaps(%struct.TYPE_28__* %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %95 = call i32 @dump_log_spacemap_obsolete_stats(%struct.TYPE_28__* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32*, i32** @dump_opt, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 100
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i32*, i32** @dump_opt, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 105
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %301

106:                                              ; preds = %101, %96
  %107 = load i32, i32* @RANGE_SEG64, align 4
  %108 = call i32 @range_tree_create(i32* null, i32 %107, i32* null, i32 0, i32 0)
  store i32 %108, i32* @mos_refd_objs, align 4
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dump_objset(i32 %111)
  %113 = load i32*, i32** @dump_opt, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 100
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 3
  br i1 %116, label %117, label %163

117:                                              ; preds = %106
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %119, align 8
  store %struct.TYPE_29__* %120, %struct.TYPE_29__** %6, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 2
  %123 = call i32 @dump_full_bpobj(i32* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %125 = call i64 @spa_version(%struct.TYPE_28__* %124)
  %126 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %117
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 2
  %131 = call i32 @dump_full_bpobj(i32* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  br label %132

132:                                              ; preds = %128, %117
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = call i64 @bpobj_is_open(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %139 = load i64, i64* @SPA_FEATURE_DEVICE_REMOVAL, align 8
  %140 = call i32 @spa_feature_is_enabled(%struct.TYPE_28__* %138, i64 %139)
  %141 = call i32 @ASSERT(i32 %140)
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = call i32 @dump_full_bpobj(i32* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %145

145:                                              ; preds = %137, %132
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %147 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %148 = call i64 @spa_feature_is_active(%struct.TYPE_28__* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dump_bptree(i32 %153, i32 %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dump_dtl(i32 %161, i32 0)
  br label %163

163:                                              ; preds = %158, %106
  store i64 0, i64* %7, align 8
  br label %164

164:                                              ; preds = %173, %163
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* @SPA_FEATURES, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i64, i64* @UINT64_MAX, align 8
  %170 = load i64*, i64** @global_feature_count, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  store i64 %169, i64* %172, align 8
  br label %173

173:                                              ; preds = %168
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %7, align 8
  br label %164

176:                                              ; preds = %164
  %177 = load i64*, i64** @global_feature_count, align 8
  %178 = load i64, i64* @SPA_FEATURE_REDACTION_BOOKMARKS, align 8
  %179 = getelementptr inbounds i64, i64* %177, i64 %178
  store i64 0, i64* %179, align 8
  %180 = load i64*, i64** @global_feature_count, align 8
  %181 = load i64, i64* @SPA_FEATURE_BOOKMARK_WRITTEN, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64 0, i64* %182, align 8
  %183 = load i64*, i64** @global_feature_count, align 8
  %184 = load i64, i64* @SPA_FEATURE_LIVELIST, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %187 = call i32 @spa_name(%struct.TYPE_28__* %186)
  %188 = load i32, i32* @dump_one_objset, align 4
  %189 = load i32, i32* @DS_FIND_SNAPSHOTS, align 4
  %190 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @dmu_objset_find(i32 %187, i32 %188, i32* null, i32 %191)
  %193 = load i32, i32* %4, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %176
  %196 = load i32*, i32** @dump_opt, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 76
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %202 = call i32 @dump_mos_leaks(%struct.TYPE_28__* %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %200, %195, %176
  store i64 0, i64* %5, align 8
  br label %204

204:                                              ; preds = %291, %203
  %205 = load i64, i64* %5, align 8
  %206 = load i64, i64* @SPA_FEATURES, align 8
  %207 = icmp ult i64 %205, %206
  br i1 %207, label %208, label %294

208:                                              ; preds = %204
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** @spa_feature_table, align 8
  %210 = load i64, i64* %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ZFEATURE_FLAG_PER_DATASET, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %238, label %217

217:                                              ; preds = %208
  %218 = load i64*, i64** @global_feature_count, align 8
  %219 = load i64, i64* %5, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @UINT64_MAX, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %291

225:                                              ; preds = %217
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %227 = load i64, i64* %5, align 8
  %228 = call i32 @spa_feature_is_enabled(%struct.TYPE_28__* %226, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %225
  %231 = load i64*, i64** @global_feature_count, align 8
  %232 = load i64, i64* %5, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @ASSERT0(i64 %234)
  br label %291

236:                                              ; preds = %225
  %237 = load i64*, i64** @global_feature_count, align 8
  store i64* %237, i64** %9, align 8
  br label %251

238:                                              ; preds = %208
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %240 = load i64, i64* %5, align 8
  %241 = call i32 @spa_feature_is_enabled(%struct.TYPE_28__* %239, i64 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %238
  %244 = load i64*, i64** @dataset_feature_count, align 8
  %245 = load i64, i64* %5, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @ASSERT0(i64 %247)
  br label %291

249:                                              ; preds = %238
  %250 = load i64*, i64** @dataset_feature_count, align 8
  store i64* %250, i64** %9, align 8
  br label %251

251:                                              ; preds = %249, %236
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** @spa_feature_table, align 8
  %254 = load i64, i64* %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i64 %254
  %256 = call i64 @feature_get_refcount(%struct.TYPE_28__* %252, %struct.TYPE_27__* %255, i64* %8)
  %257 = load i64, i64* @ENOTSUP, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  br label %291

260:                                              ; preds = %251
  %261 = load i64*, i64** %9, align 8
  %262 = load i64, i64* %5, align 8
  %263 = getelementptr inbounds i64, i64* %261, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %8, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %260
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** @spa_feature_table, align 8
  %269 = load i64, i64* %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = load i64*, i64** %9, align 8
  %274 = load i64, i64* %5, align 8
  %275 = getelementptr inbounds i64, i64* %273, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = load i64, i64* %8, align 8
  %279 = trunc i64 %278 to i32
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i8* %272, i32 %277, i32 %279)
  store i32 2, i32* %4, align 4
  br label %290

281:                                              ; preds = %260
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** @spa_feature_table, align 8
  %283 = load i64, i64* %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = load i64, i64* %8, align 8
  %288 = trunc i64 %287 to i32
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %286, i32 %288)
  br label %290

290:                                              ; preds = %281, %267
  br label %291

291:                                              ; preds = %290, %259, %243, %230, %224
  %292 = load i64, i64* %5, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %5, align 8
  br label %204

294:                                              ; preds = %204
  %295 = load i32, i32* %4, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %299 = call i32 @verify_device_removal_feature_counts(%struct.TYPE_28__* %298)
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %297, %294
  br label %301

301:                                              ; preds = %300, %101
  %302 = load i32, i32* %4, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %301
  %305 = load i32*, i32** @dump_opt, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 98
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  %310 = load i32*, i32** @dump_opt, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 99
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309, %304
  %315 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %316 = call i32 @dump_block_stats(%struct.TYPE_28__* %315)
  store i32 %316, i32* %4, align 4
  br label %317

317:                                              ; preds = %314, %309, %301
  %318 = load i32, i32* %4, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %322 = call i32 @verify_spacemap_refcounts(%struct.TYPE_28__* %321)
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32*, i32** @dump_opt, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 115
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %330 = call i32 @show_pool_stats(%struct.TYPE_28__* %329)
  br label %331

331:                                              ; preds = %328, %323
  %332 = load i32*, i32** @dump_opt, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 104
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %338 = call i32 @dump_history(%struct.TYPE_28__* %337)
  br label %339

339:                                              ; preds = %336, %331
  %340 = load i32, i32* %4, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %344 = call i32 @verify_checkpoint(%struct.TYPE_28__* %343)
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i32, i32* %4, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = call i32 (...) @dump_debug_buffer()
  %350 = load i32, i32* %4, align 4
  %351 = call i32 @exit(i32 %350) #3
  unreachable

352:                                              ; preds = %16, %345
  ret void
}

declare dso_local %struct.TYPE_29__* @spa_get_dsl(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_simulated_ddt(%struct.TYPE_28__*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_nvlist(i32, i32) #1

declare dso_local i32 @dump_config(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_uberblock(i32*, i8*, i8*) #1

declare dso_local i32 @dump_all_ddts(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_metaslabs(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_metaslab_groups(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_log_spacemaps(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_log_spacemap_obsolete_stats(%struct.TYPE_28__*) #1

declare dso_local i32 @range_tree_create(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @dump_objset(i32) #1

declare dso_local i32 @dump_full_bpobj(i32*, i8*, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_28__*) #1

declare dso_local i64 @bpobj_is_open(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_enabled(%struct.TYPE_28__*, i64) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @dump_bptree(i32, i32, i8*) #1

declare dso_local i32 @dump_dtl(i32, i32) #1

declare dso_local i32 @dmu_objset_find(i32, i32, i32*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_mos_leaks(%struct.TYPE_28__*) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i64 @feature_get_refcount(%struct.TYPE_28__*, %struct.TYPE_27__*, i64*) #1

declare dso_local i32 @verify_device_removal_feature_counts(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_block_stats(%struct.TYPE_28__*) #1

declare dso_local i32 @verify_spacemap_refcounts(%struct.TYPE_28__*) #1

declare dso_local i32 @show_pool_stats(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_history(%struct.TYPE_28__*) #1

declare dso_local i32 @verify_checkpoint(%struct.TYPE_28__*) #1

declare dso_local i32 @dump_debug_buffer(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
