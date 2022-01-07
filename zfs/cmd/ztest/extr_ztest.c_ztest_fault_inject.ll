; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fault_inject.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_fault_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i64, i32, i32, i8*, i8*, i64, %struct.TYPE_23__*, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@ztest_shared = common dso_local global %struct.TYPE_21__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_24__* null, align 8
@SPA_MAXBLOCKSHIFT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@ztest_opts = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@ztest_pool_scrubbed = common dso_local global i64 0, align 8
@ztest_name_lock = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ztest_dev_template = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"injecting fault to vdev %llu; maxfaults=%d\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ZFS_OFFLINE_TEMPORARY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@O_RDWR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i32 0, align 4
@VDEV_LABEL_END_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"can't inject bad word at 0x%llx in %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"injected bad word into %s, offset 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_fault_inject(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_23__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** @ztest_shared, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** @ztest_spa, align 8
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %6, align 8
  store i32 -287388962, i32* %10, align 4
  %29 = load i32, i32* @SPA_MAXBLOCKSHIFT, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %16, align 4
  store i32 1000, i32* %17, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %20, align 8
  store i32 0, i32* %21, align 4
  %31 = load i64, i64* @B_FALSE, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %22, align 8
  %33 = load i32, i32* @MAXPATHLEN, align 4
  %34 = load i32, i32* @UMEM_NOFAIL, align 4
  %35 = call i8* @umem_alloc(i32 %33, i32 %34)
  store i8* %35, i8** %13, align 8
  %36 = load i32, i32* @MAXPATHLEN, align 4
  %37 = load i32, i32* @UMEM_NOFAIL, align 4
  %38 = call i8* @umem_alloc(i32 %36, i32 %37)
  store i8* %38, i8** %14, align 8
  %39 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %40 = load i64, i64* @ztest_device_removal_active, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %375

44:                                               ; preds = %2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = call i32 @MAXFAULTS(%struct.TYPE_21__* %45)
  store i32 %46, i32* %18, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MAX(i32 %49, i32 1)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 0), align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %19, align 4
  %56 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load i64, i64* @ztest_pool_scrubbed, align 8
  %62 = load i64, i64* @B_FALSE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  br label %375

65:                                               ; preds = %44
  %66 = call i32 @pthread_rwlock_rdlock(i32* @ztest_name_lock)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %68 = load i32, i32* @SCL_STATE, align 4
  %69 = load i32, i32* @FTAG, align 4
  %70 = load i32, i32* @RW_READER, align 4
  %71 = call i32 @spa_config_enter(%struct.TYPE_24__* %67, i32 %68, i32 %69, i32 %70)
  %72 = call i64 @ztest_random(i64 2)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %186

74:                                               ; preds = %65
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = load i8*, i8** @B_TRUE, align 8
  %77 = call i32 @ztest_random_vdev_top(%struct.TYPE_24__* %75, i8* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = call i64 @ztest_random(i64 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %12, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* @MAXPATHLEN, align 4
  %89 = load i8*, i8** @ztest_dev_template, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 3), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 2), align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = call i32 @snprintf(i8* %87, i32 %88, i8* %89, i32 %90, i32 %91, i32 %98)
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* @MAXPATHLEN, align 4
  %102 = load i8*, i8** @ztest_dev_template, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 3), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 2), align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i32 @snprintf(i8* %100, i32 %101, i8* %102, i32 %103, i32 %104, i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call %struct.TYPE_22__* @vdev_lookup_by_path(i32 %113, i8* %114)
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %20, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %117 = icmp ne %struct.TYPE_22__* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %74
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i8*, i8** @B_TRUE, align 8
  store i8* %126, i8** %22, align 8
  br label %127

127:                                              ; preds = %125, %118, %74
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %129 = icmp ne %struct.TYPE_22__* %128, null
  br i1 %129, label %130, label %185

130:                                              ; preds = %127
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 1
  br i1 %132, label %133, label %185

133:                                              ; preds = %130
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = call i32 @vdev_resilver_needed(%struct.TYPE_19__* %136, i32* null, i32* null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %139, %133
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %23, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %150, i32 %151)
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %154 = icmp ne %struct.TYPE_23__* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %144
  %156 = call i64 @ztest_random(i64 3)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @close(i32 %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  store i32 -1, i32* %168, align 4
  br label %181

169:                                              ; preds = %155, %144
  %170 = call i64 @ztest_random(i64 2)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i8*, i8** @B_TRUE, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  br label %180

176:                                              ; preds = %169
  %177 = load i8*, i8** @B_TRUE, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 3
  store i8* %177, i8** %179, align 8
  br label %180

180:                                              ; preds = %176, %172
  br label %181

181:                                              ; preds = %180, %158
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %21, align 4
  br label %185

185:                                              ; preds = %181, %139, %130, %127
  br label %223

186:                                              ; preds = %65
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  store %struct.TYPE_25__* %188, %struct.TYPE_25__** %24, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %195 = load i32, i32* @SCL_STATE, align 4
  %196 = load i32, i32* @FTAG, align 4
  %197 = call i32 @spa_config_exit(%struct.TYPE_24__* %194, i32 %195, i32 %196)
  %198 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  br label %375

199:                                              ; preds = %186
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %201, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @ztest_random(i64 %205)
  %207 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %202, i64 %206
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %207, align 8
  store %struct.TYPE_22__* %208, %struct.TYPE_22__** %20, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %21, align 4
  %212 = load i8*, i8** %13, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @strcpy(i8* %212, i32 %215)
  %217 = load i8*, i8** %14, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @strcpy(i8* %217, i32 %220)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %222 = load i32, i32* @INT_MAX, align 4
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %199, %185
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %225 = load i32, i32* @SCL_STATE, align 4
  %226 = load i32, i32* @FTAG, align 4
  %227 = call i32 @spa_config_exit(%struct.TYPE_24__* %224, i32 %225, i32 %226)
  %228 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  %229 = load i32, i32* %18, align 4
  %230 = icmp sge i32 %229, 2
  br i1 %230, label %234, label %231

231:                                              ; preds = %223
  %232 = load i8*, i8** %22, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %273

234:                                              ; preds = %231, %223
  %235 = load i32, i32* %21, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %273

237:                                              ; preds = %234
  %238 = call i64 @ztest_random(i64 10)
  %239 = icmp ult i64 %238, 6
  br i1 %239, label %240, label %266

240:                                              ; preds = %237
  %241 = call i64 @ztest_random(i64 2)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i32, i32* @ZFS_OFFLINE_TEMPORARY, align 4
  br label %246

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i32 [ %244, %243 ], [ 0, %245 ]
  store i32 %247, i32* %25, align 4
  %248 = load i8*, i8** %22, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = call i32 @pthread_rwlock_wrlock(i32* @ztest_name_lock)
  br label %252

252:                                              ; preds = %250, %246
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %254 = load i32, i32* %21, align 4
  %255 = load i32, i32* %25, align 4
  %256 = call i64 @vdev_offline(%struct.TYPE_24__* %253, i32 %254, i32 %255)
  %257 = load i64, i64* @EBUSY, align 8
  %258 = icmp ne i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @VERIFY(i32 %259)
  %261 = load i8*, i8** %22, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %252
  %264 = call i32 @pthread_rwlock_unlock(i32* @ztest_name_lock)
  br label %265

265:                                              ; preds = %263, %252
  br label %272

266:                                              ; preds = %237
  %267 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %269 = load i32, i32* %21, align 4
  %270 = call i32 @vdev_online(%struct.TYPE_24__* %268, i32 %269, i32 0, i32* null)
  %271 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %272

272:                                              ; preds = %266, %265
  br label %273

273:                                              ; preds = %272, %234, %231
  %274 = load i32, i32* %18, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %375

277:                                              ; preds = %273
  %278 = load i8*, i8** %14, align 8
  %279 = load i32, i32* @O_RDWR, align 4
  %280 = call i32 @open(i8* %278, i32 %279)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %375

284:                                              ; preds = %277
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @SEEK_END, align 4
  %287 = call i64 @lseek(i32 %285, i32 0, i32 %286)
  store i64 %287, i64* %15, align 8
  br label %288

288:                                              ; preds = %371, %341, %325, %284
  %289 = load i32, i32* %17, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %372

292:                                              ; preds = %288
  %293 = load i64, i64* %15, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %16, align 4
  %296 = shl i32 %294, %295
  %297 = sext i32 %296 to i64
  %298 = udiv i64 %293, %297
  %299 = call i64 @ztest_random(i64 %298)
  %300 = load i32, i32* %9, align 4
  %301 = load i32, i32* %16, align 4
  %302 = shl i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = mul i64 %299, %303
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %16, align 4
  %307 = shl i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = add i64 %304, %308
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %310, 1
  %312 = zext i32 %311 to i64
  %313 = shl i64 1, %312
  %314 = call i64 @ztest_random(i64 %313)
  %315 = and i64 %314, -8
  %316 = add i64 %309, %315
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %8, align 4
  %318 = load i32, i32* %12, align 4
  %319 = and i32 %318, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %292
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* @VDEV_LABEL_START_SIZE, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %288

326:                                              ; preds = %321, %292
  %327 = load i64, i64* %15, align 8
  %328 = call i32 @P2ALIGN(i64 %327, i32 4)
  store i32 %328, i32* %26, align 4
  %329 = load i32, i32* %12, align 4
  %330 = and i32 %329, 1
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %342

332:                                              ; preds = %326
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = add i64 %334, 4
  %336 = load i32, i32* %26, align 4
  %337 = load i32, i32* @VDEV_LABEL_END_SIZE, align 4
  %338 = sub nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = icmp ugt i64 %335, %339
  br i1 %340, label %341, label %342

341:                                              ; preds = %332
  br label %288

342:                                              ; preds = %332, %326
  %343 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %344 = load i32, i32* %19, align 4
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %344, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %342
  %350 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %351 = load i32, i32* %7, align 4
  %352 = call i32 @close(i32 %351)
  br label %375

353:                                              ; preds = %342
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* %8, align 4
  %356 = call i32 @pwrite(i32 %354, i32* %10, i32 4, i32 %355)
  %357 = sext i32 %356 to i64
  %358 = icmp ne i64 %357, 4
  br i1 %358, label %359, label %363

359:                                              ; preds = %353
  %360 = load i32, i32* %8, align 4
  %361 = load i8*, i8** %14, align 8
  %362 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %360, i8* %361)
  br label %363

363:                                              ; preds = %359, %353
  %364 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %365 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ztest_opts, i32 0, i32 1), align 4
  %366 = icmp sge i32 %365, 7
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load i8*, i8** %14, align 8
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %368, i32 %369)
  br label %371

371:                                              ; preds = %367, %363
  br label %288

372:                                              ; preds = %288
  %373 = load i32, i32* %7, align 4
  %374 = call i32 @close(i32 %373)
  br label %375

375:                                              ; preds = %372, %349, %283, %276, %193, %64, %42
  %376 = load i8*, i8** %13, align 8
  %377 = load i32, i32* @MAXPATHLEN, align 4
  %378 = call i32 @umem_free(i8* %376, i32 %377)
  %379 = load i8*, i8** %14, align 8
  %380 = load i32, i32* @MAXPATHLEN, align 4
  %381 = call i32 @umem_free(i8* %379, i32 %380)
  ret void
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @MAXFAULTS(%struct.TYPE_21__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i64 @ztest_random(i64) #1

declare dso_local i32 @ztest_random_vdev_top(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_22__* @vdev_lookup_by_path(i32, i8*) #1

declare dso_local i32 @vdev_resilver_needed(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @pthread_rwlock_wrlock(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @vdev_offline(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @vdev_online(%struct.TYPE_24__*, i32, i32, i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @P2ALIGN(i64, i32) #1

declare dso_local i32 @pwrite(i32, i32*, i32, i32) #1

declare dso_local i32 @fatal(i32, i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
