; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_attach_detach.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_vdev_attach_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_20__*, i32*, i32, %struct.TYPE_22__*, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_19__ = type { i64, i32, i32, i64 }

@ztest_shared = common dso_local global %struct.TYPE_21__* null, align 8
@ztest_spa = common dso_local global %struct.TYPE_23__* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ztest_device_removal_active = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@vdev_mirror_ops = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"detach (%s) returned %d\00", align 1
@ztest_dev_template = common dso_local global i8* null, align 8
@vdev_root_ops = common dso_local global i32 0, align 4
@vdev_replacing_ops = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"attach (%s %llu, %s %llu, %d) returned %d, expected %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_attach_detach(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** @ztest_shared, align 8
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %5, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ztest_spa, align 8
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %6, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %7, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %8, align 8
  %36 = call i64 (...) @ztest_get_ashift()
  store i64 %36, i64* %16, align 8
  %37 = load i32, i32* @B_FALSE, align 4
  store i32 %37, i32* %24, align 4
  %38 = load i32, i32* @B_FALSE, align 4
  store i32 %38, i32* %25, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 3), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %459

42:                                               ; preds = %2
  %43 = load i32, i32* @MAXPATHLEN, align 4
  %44 = load i32, i32* @UMEM_NOFAIL, align 4
  %45 = call i8* @umem_alloc(i32 %43, i32 %44)
  store i8* %45, i8** %21, align 8
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = load i32, i32* @UMEM_NOFAIL, align 4
  %48 = call i8* @umem_alloc(i32 %46, i32 %47)
  store i8* %48, i8** %22, align 8
  %49 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @MAX(i32 %52, i32 1)
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 0), align 8
  %55 = mul i64 %53, %54
  store i64 %55, i64* %13, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = load i32, i32* @SCL_ALL, align 4
  %58 = load i32, i32* @FTAG, align 4
  %59 = load i32, i32* @RW_WRITER, align 4
  %60 = call i32 @spa_config_enter(%struct.TYPE_23__* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i64, i64* @ztest_device_removal_active, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %42
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %65 = load i32, i32* @SCL_ALL, align 4
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @spa_config_exit(%struct.TYPE_23__* %64, i32 %65, i32 %66)
  %68 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %459

69:                                               ; preds = %42
  %70 = call i32 @ztest_random(i32 2)
  store i32 %70, i32* %23, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = load i32, i32* @B_TRUE, align 4
  %73 = call i64 @ztest_random_vdev_top(%struct.TYPE_23__* %71, i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @ztest_random(i32 %75)
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %14, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %80, i64 %81
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %9, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %112

88:                                               ; preds = %69
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, @vdev_mirror_ops
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %105, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 0), align 8
  %109 = udiv i64 %107, %108
  %110 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %106, i64 %109
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  store %struct.TYPE_22__* %111, %struct.TYPE_22__** %9, align 8
  br label %112

112:                                              ; preds = %88, %69
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 0), align 8
  %114 = icmp ugt i64 %113, 1
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, @vdev_raidz_ops
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 0), align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = call i32 @ASSERT(i32 %128)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 0), align 8
  %135 = urem i64 %133, %134
  %136 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %132, i64 %135
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %9, align 8
  br label %138

138:                                              ; preds = %115, %112
  br label %139

139:                                              ; preds = %144, %138
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load i32, i32* @B_TRUE, align 4
  store i32 %145, i32* %24, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sge i32 %148, 2
  %150 = zext i1 %149 to i32
  %151 = call i32 @ASSERT(i32 %150)
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %153, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ztest_random(i32 %157)
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %154, i64 %159
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  store %struct.TYPE_22__* %161, %struct.TYPE_22__** %9, align 8
  br label %139

162:                                              ; preds = %139
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %17, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %167 = call i64 @vdev_get_min_asize(%struct.TYPE_22__* %166)
  store i64 %167, i64* %19, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %26, align 4
  %173 = load i8*, i8** %21, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @strcpy(i8* %173, i32 %176)
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  store %struct.TYPE_22__* %180, %struct.TYPE_22__** %11, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %18, align 8
  %184 = load i32, i32* %24, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %233

186:                                              ; preds = %162
  %187 = call i32 @ztest_random(i32 2)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %233

189:                                              ; preds = %186
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %191 = load i32, i32* @SCL_ALL, align 4
  %192 = load i32, i32* @FTAG, align 4
  %193 = call i32 @spa_config_exit(%struct.TYPE_23__* %190, i32 %191, i32 %192)
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %195 = call i32 @ztest_scrub_impl(%struct.TYPE_23__* %194)
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %27, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %451

199:                                              ; preds = %189
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %201 = load i64, i64* %17, align 8
  %202 = load i64, i64* %18, align 8
  %203 = load i32, i32* @B_FALSE, align 4
  %204 = call i32 @spa_vdev_detach(%struct.TYPE_23__* %200, i64 %201, i64 %202, i32 %203)
  store i32 %204, i32* %27, align 4
  %205 = load i32, i32* %27, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %232

207:                                              ; preds = %199
  %208 = load i32, i32* %27, align 4
  %209 = load i32, i32* @ENODEV, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %232

211:                                              ; preds = %207
  %212 = load i32, i32* %27, align 4
  %213 = load i32, i32* @EBUSY, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %232

215:                                              ; preds = %211
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* @ENOTSUP, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load i32, i32* %27, align 4
  %225 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i8*, i8** %21, align 8
  %229 = load i32, i32* %27, align 4
  %230 = sext i32 %229 to i64
  %231 = call i32 (i32, i8*, i8*, i64, ...) @fatal(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %228, i64 %230)
  br label %232

232:                                              ; preds = %227, %223, %219, %215, %211, %207, %199
  br label %451

233:                                              ; preds = %186, %162
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %258

238:                                              ; preds = %233
  %239 = call i32 @ztest_random(i32 3)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %238
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %243, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @ztest_random(i32 %247)
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %244, i64 %249
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  store %struct.TYPE_22__* %251, %struct.TYPE_22__** %10, align 8
  %252 = load i32, i32* @B_TRUE, align 4
  store i32 %252, i32* %25, align 4
  %253 = load i8*, i8** %22, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @strcpy(i8* %253, i32 %256)
  br label %283

258:                                              ; preds = %238, %233
  %259 = load i8*, i8** %22, align 8
  %260 = load i32, i32* @MAXPATHLEN, align 4
  %261 = load i8*, i8** @ztest_dev_template, align 8
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 2), align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ztest_opts, i32 0, i32 1), align 8
  %264 = load i64, i64* %15, align 8
  %265 = load i64, i64* %13, align 8
  %266 = mul i64 %264, %265
  %267 = load i64, i64* %14, align 8
  %268 = add i64 %266, %267
  %269 = call i32 @snprintf(i8* %259, i32 %260, i8* %261, i32 %262, i32 %263, i64 %268)
  %270 = call i32 @ztest_random(i32 2)
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %258
  %273 = load i8*, i8** %22, align 8
  %274 = load i8*, i8** %22, align 8
  %275 = call i32 @strlen(i8* %274)
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %273, i64 %277
  store i8 98, i8* %278, align 1
  br label %279

279:                                              ; preds = %272, %258
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %281 = load i8*, i8** %22, align 8
  %282 = call %struct.TYPE_22__* @vdev_lookup_by_path(%struct.TYPE_22__* %280, i8* %281)
  store %struct.TYPE_22__* %282, %struct.TYPE_22__** %10, align 8
  br label %283

283:                                              ; preds = %279, %241
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %285 = icmp ne %struct.TYPE_22__* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %283
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %288 = call i32 @vdev_reopen(%struct.TYPE_22__* %287)
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %290 = call i64 @vdev_get_min_asize(%struct.TYPE_22__* %289)
  store i64 %290, i64* %20, align 8
  br label %298

291:                                              ; preds = %283
  %292 = load i64, i64* %19, align 8
  %293 = mul i64 10, %292
  %294 = call i32 @ztest_random(i32 3)
  %295 = add nsw i32 9, %294
  %296 = sext i32 %295 to i64
  %297 = udiv i64 %293, %296
  store i64 %297, i64* %20, align 8
  br label %298

298:                                              ; preds = %291, %286
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = icmp ne i32* %301, @vdev_mirror_ops
  br i1 %302, label %303, label %323

303:                                              ; preds = %298
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = icmp ne i32* %306, @vdev_root_ops
  br i1 %307, label %308, label %323

308:                                              ; preds = %303
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %308
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = icmp eq i32* %314, @vdev_replacing_ops
  br i1 %315, label %321, label %316

316:                                              ; preds = %311
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = icmp eq i32* %319, @vdev_spare_ops
  br i1 %320, label %321, label %323

321:                                              ; preds = %316, %311, %308
  %322 = load i32, i32* @ENOTSUP, align 4
  store i32 %322, i32* %28, align 4
  br label %375

323:                                              ; preds = %316, %303, %298
  %324 = load i32, i32* %25, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %334

326:                                              ; preds = %323
  %327 = load i32, i32* %23, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, i32* %26, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329, %326
  %333 = load i32, i32* @ENOTSUP, align 4
  store i32 %333, i32* %28, align 4
  br label %374

334:                                              ; preds = %329, %323
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %337 = icmp eq %struct.TYPE_22__* %335, %336
  br i1 %337, label %338, label %346

338:                                              ; preds = %334
  %339 = load i32, i32* %23, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %344

342:                                              ; preds = %338
  %343 = load i32, i32* @EBUSY, align 4
  br label %344

344:                                              ; preds = %342, %341
  %345 = phi i32 [ 0, %341 ], [ %343, %342 ]
  store i32 %345, i32* %28, align 4
  br label %373

346:                                              ; preds = %334
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %348 = load i8*, i8** %22, align 8
  %349 = call %struct.TYPE_22__* @vdev_lookup_by_path(%struct.TYPE_22__* %347, i8* %348)
  %350 = icmp ne %struct.TYPE_22__* %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %346
  %352 = load i32, i32* @EBUSY, align 4
  store i32 %352, i32* %28, align 4
  br label %372

353:                                              ; preds = %346
  %354 = load i64, i64* %20, align 8
  %355 = load i64, i64* %19, align 8
  %356 = icmp ult i64 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = load i32, i32* @EOVERFLOW, align 4
  store i32 %358, i32* %28, align 4
  br label %371

359:                                              ; preds = %353
  %360 = load i64, i64* %16, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ugt i64 %360, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %359
  %368 = load i32, i32* @EDOM, align 4
  store i32 %368, i32* %28, align 4
  br label %370

369:                                              ; preds = %359
  store i32 0, i32* %28, align 4
  br label %370

370:                                              ; preds = %369, %367
  br label %371

371:                                              ; preds = %370, %357
  br label %372

372:                                              ; preds = %371, %351
  br label %373

373:                                              ; preds = %372, %344
  br label %374

374:                                              ; preds = %373, %332
  br label %375

375:                                              ; preds = %374, %321
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %377 = load i32, i32* @SCL_ALL, align 4
  %378 = load i32, i32* @FTAG, align 4
  %379 = call i32 @spa_config_exit(%struct.TYPE_23__* %376, i32 %377, i32 %378)
  %380 = load i8*, i8** %22, align 8
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %382 = icmp eq %struct.TYPE_22__* %381, null
  br i1 %382, label %383, label %385

383:                                              ; preds = %375
  %384 = load i64, i64* %20, align 8
  br label %386

385:                                              ; preds = %375
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i64 [ %384, %383 ], [ 0, %385 ]
  %388 = load i64, i64* %16, align 8
  %389 = call i32* @make_vdev_root(i8* %380, i32* null, i32* null, i64 %387, i64 %388, i32* null, i32 0, i32 0, i32 1)
  store i32* %389, i32** %12, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %391 = load i64, i64* %17, align 8
  %392 = load i32*, i32** %12, align 8
  %393 = load i32, i32* %23, align 4
  %394 = call i32 @spa_vdev_attach(%struct.TYPE_23__* %390, i64 %391, i32* %392, i32 %393)
  store i32 %394, i32* %27, align 4
  %395 = load i32*, i32** %12, align 8
  %396 = call i32 @nvlist_free(i32* %395)
  %397 = load i32, i32* %28, align 4
  %398 = load i32, i32* @ENOTSUP, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %413

400:                                              ; preds = %386
  %401 = load i32, i32* %27, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %411, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* %27, align 4
  %405 = load i32, i32* @ENODEV, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %411, label %407

407:                                              ; preds = %403
  %408 = load i32, i32* %27, align 4
  %409 = load i32, i32* @EOVERFLOW, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %407, %403, %400
  %412 = load i32, i32* %27, align 4
  store i32 %412, i32* %28, align 4
  br label %413

413:                                              ; preds = %411, %407, %386
  %414 = load i32, i32* %27, align 4
  %415 = load i32, i32* @EOVERFLOW, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %421, label %417

417:                                              ; preds = %413
  %418 = load i32, i32* %27, align 4
  %419 = load i32, i32* @EBUSY, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %417, %413
  %422 = load i32, i32* %27, align 4
  store i32 %422, i32* %28, align 4
  br label %423

423:                                              ; preds = %421, %417
  %424 = load i32, i32* %27, align 4
  %425 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %431, label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %27, align 4
  %429 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %433

431:                                              ; preds = %427, %423
  %432 = load i32, i32* %27, align 4
  store i32 %432, i32* %28, align 4
  br label %433

433:                                              ; preds = %431, %427
  %434 = load i32, i32* %27, align 4
  %435 = load i32, i32* %28, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %450

437:                                              ; preds = %433
  %438 = load i32, i32* %28, align 4
  %439 = load i32, i32* @EBUSY, align 4
  %440 = icmp ne i32 %438, %439
  br i1 %440, label %441, label %450

441:                                              ; preds = %437
  %442 = load i8*, i8** %21, align 8
  %443 = load i64, i64* %19, align 8
  %444 = load i8*, i8** %22, align 8
  %445 = load i64, i64* %20, align 8
  %446 = load i32, i32* %23, align 4
  %447 = load i32, i32* %27, align 4
  %448 = load i32, i32* %28, align 4
  %449 = call i32 (i32, i8*, i8*, i64, ...) @fatal(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %442, i64 %443, i8* %444, i64 %445, i32 %446, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %441, %437, %433
  br label %451

451:                                              ; preds = %450, %232, %198
  %452 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  %453 = load i8*, i8** %21, align 8
  %454 = load i32, i32* @MAXPATHLEN, align 4
  %455 = call i32 @umem_free(i8* %453, i32 %454)
  %456 = load i8*, i8** %22, align 8
  %457 = load i32, i32* @MAXPATHLEN, align 4
  %458 = call i32 @umem_free(i8* %456, i32 %457)
  br label %459

459:                                              ; preds = %451, %63, %41
  ret void
}

declare dso_local i64 @ztest_get_ashift(...) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i64 @ztest_random_vdev_top(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @vdev_get_min_asize(%struct.TYPE_22__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ztest_scrub_impl(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_vdev_detach(%struct.TYPE_23__*, i64, i64, i32) #1

declare dso_local i32 @fatal(i32, i8*, i8*, i64, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_22__* @vdev_lookup_by_path(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_22__*) #1

declare dso_local i32* @make_vdev_root(i8*, i32*, i32*, i64, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @spa_vdev_attach(%struct.TYPE_23__*, i64, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
