; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_24__*, i64*, i64*, i64*)*, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_21__*, i32*, %struct.TYPE_24__*, i64, i64, i32, i32*, %struct.TYPE_22__**, i64, i64, i64, i8*, %struct.TYPE_23__, i8*, i64, i8*, i8*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i64, i64, i32, i32, i64 }

@curthread = common dso_local global i64 0, align 8
@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_STATE_CLOSED = common dso_local global i64 0, align 8
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@VDEV_AUX_NONE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i8* null, align 8
@VDEV_AUX_ERR_EXCEEDED = common dso_local global i64 0, align 8
@VDEV_AUX_EXTERNAL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_STATE_FAULTED = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i64 0, align 8
@zio_injection_enabled = common dso_local global i64 0, align 8
@VDEV_AUX_CHILDREN_OFFLINE = common dso_local global i64 0, align 8
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@vdev_missing_ops = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@SPA_MINDEVSIZE = common dso_local global i64 0, align 8
@VDEV_AUX_TOO_SMALL = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i64 0, align 8
@VDEV_LABEL_END_SIZE = common dso_local global i64 0, align 8
@VDEV_AUX_BAD_LABEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ASHIFT_MIN = common dso_local global i64 0, align 8
@ASHIFT_MAX = common dso_local global i64 0, align 8
@VDEV_AUX_BAD_ASHIFT = common dso_local global i64 0, align 8
@EDOM = common dso_local global i32 0, align 4
@FM_EREPORT_ZFS_DEVICE_BAD_ASHIFT = common dso_local global i32 0, align 4
@VDEV_BIAS_NONE = common dso_local global i64 0, align 8
@SPA_FEATURE_RESILVER_DEFER = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_open(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 27
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @curthread, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = load i64, i64* @SCL_STATE_ALL, align 8
  %24 = load i32, i32* @RW_WRITER, align 4
  %25 = call i64 @spa_config_held(%struct.TYPE_25__* %22, i64 %23, i32 %24)
  %26 = load i64, i64* @SCL_STATE_ALL, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %21, %1
  %29 = phi i1 [ true, %1 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %37, %28
  %50 = phi i1 [ true, %37 ], [ true, %28 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i64, i64* @VDEV_AUX_NONE, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 22
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i8*, i8** @B_FALSE, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 26
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @B_FALSE, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 25
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = call i64 @vdev_get_min_asize(%struct.TYPE_24__* %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 21
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %107, label %71

71:                                               ; preds = %49
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 20
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %76
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  %93 = icmp eq i64 %91, %92
  br label %94

94:                                               ; preds = %88, %76
  %95 = phi i1 [ true, %76 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = load i32, i32* @B_TRUE, align 4
  %100 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @vdev_set_state(%struct.TYPE_24__* %98, i32 %99, i64 %100, i64 %103)
  %105 = load i32, i32* @ENXIO, align 4
  %106 = call i32 @SET_ERROR(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %612

107:                                              ; preds = %71, %49
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 24
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %120 = load i32, i32* @B_TRUE, align 4
  %121 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %122 = load i64, i64* @VDEV_AUX_NONE, align 8
  %123 = call i32 @vdev_set_state(%struct.TYPE_24__* %119, i32 %120, i64 %121, i64 %122)
  %124 = load i32, i32* @ENXIO, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %2, align 4
  br label %612

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 10
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_24__*, i64*, i64*, i64*)*, i32 (%struct.TYPE_24__*, i64*, i64*, i64*)** %131, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %134 = call i32 %132(%struct.TYPE_24__* %133, i64* %6, i64* %7, i64* %11)
  store i32 %134, i32* %5, align 4
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %127
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %140 = load i32, i32* @B_TRUE, align 4
  %141 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %142 = load i64, i64* @VDEV_AUX_OPEN_FAILED, align 8
  %143 = call i32 @vdev_set_state(%struct.TYPE_24__* %139, i32 %140, i64 %141, i64 %142)
  %144 = load i32, i32* @ENXIO, align 4
  %145 = call i32 @SET_ERROR(i32 %144)
  store i32 %145, i32* %2, align 4
  br label %612

146:                                              ; preds = %127
  %147 = load i8*, i8** @B_FALSE, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 23
  store i8* %147, i8** %149, align 8
  %150 = load i64, i64* @zio_injection_enabled, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %157 = load i32, i32* @ENXIO, align 4
  %158 = call i32 @zio_handle_device_injection(%struct.TYPE_24__* %156, i32* null, i32 %157)
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %152, %146
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %205

162:                                              ; preds = %159
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 21
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 22
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VDEV_AUX_OPEN_FAILED, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i8*, i8** @B_FALSE, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 21
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %174, %167, %162
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 22
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @VDEV_AUX_CHILDREN_OFFLINE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %178
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %187 = load i32, i32* @B_TRUE, align 4
  %188 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 22
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @vdev_set_state(%struct.TYPE_24__* %186, i32 %187, i64 %188, i64 %192)
  br label %203

194:                                              ; preds = %178
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %196 = load i32, i32* @B_TRUE, align 4
  %197 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 22
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @vdev_set_state(%struct.TYPE_24__* %195, i32 %196, i64 %197, i64 %201)
  br label %203

203:                                              ; preds = %194, %185
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* %2, align 4
  br label %612

205:                                              ; preds = %159
  %206 = load i8*, i8** @B_FALSE, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 21
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 20
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %205
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @ASSERT(i32 %218)
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %213
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  %230 = icmp eq i64 %228, %229
  br label %231

231:                                              ; preds = %225, %213
  %232 = phi i1 [ true, %213 ], [ %230, %225 ]
  %233 = zext i1 %232 to i32
  %234 = call i32 @ASSERT(i32 %233)
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %236 = load i32, i32* @B_TRUE, align 4
  %237 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @vdev_set_state(%struct.TYPE_24__* %235, i32 %236, i64 %237, i64 %240)
  %242 = load i32, i32* @ENXIO, align 4
  %243 = call i32 @SET_ERROR(i32 %242)
  store i32 %243, i32* %2, align 4
  br label %612

244:                                              ; preds = %205
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 19
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @ASSERT(i32 %254)
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %257 = load i32, i32* @B_TRUE, align 4
  %258 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %259 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %260 = call i32 @vdev_set_state(%struct.TYPE_24__* %256, i32 %257, i64 %258, i64 %259)
  br label %266

261:                                              ; preds = %244
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %263 = load i32, i32* @B_TRUE, align 4
  %264 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %265 = call i32 @vdev_set_state(%struct.TYPE_24__* %262, i32 %263, i64 %264, i64 0)
  br label %266

266:                                              ; preds = %261, %249
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 18
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 10
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = icmp eq %struct.TYPE_21__* %274, @vdev_missing_ops
  br i1 %275, label %276, label %277

276:                                              ; preds = %271, %266
  store i32 0, i32* %2, align 4
  br label %612

277:                                              ; preds = %271
  store i32 0, i32* %12, align 4
  br label %278

278:                                              ; preds = %304, %277
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp slt i64 %280, %283
  br i1 %284, label %285, label %307

285:                                              ; preds = %278
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 17
  %288 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %287, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %288, i64 %290
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %285
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %299 = load i32, i32* @B_TRUE, align 4
  %300 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %301 = load i64, i64* @VDEV_AUX_NONE, align 8
  %302 = call i32 @vdev_set_state(%struct.TYPE_24__* %298, i32 %299, i64 %300, i64 %301)
  br label %307

303:                                              ; preds = %285
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  br label %278

307:                                              ; preds = %297, %278
  %308 = load i64, i64* %6, align 8
  %309 = call i64 @P2ALIGN(i64 %308, i64 4)
  store i64 %309, i64* %6, align 8
  %310 = load i64, i64* %7, align 8
  %311 = call i64 @P2ALIGN(i64 %310, i64 4)
  store i64 %311, i64* %7, align 8
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %340

316:                                              ; preds = %307
  %317 = load i64, i64* %6, align 8
  %318 = load i64, i64* @SPA_MINDEVSIZE, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %322 = load i32, i32* @B_TRUE, align 4
  %323 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %324 = load i64, i64* @VDEV_AUX_TOO_SMALL, align 8
  %325 = call i32 @vdev_set_state(%struct.TYPE_24__* %321, i32 %322, i64 %323, i64 %324)
  %326 = load i32, i32* @EOVERFLOW, align 4
  %327 = call i32 @SET_ERROR(i32 %326)
  store i32 %327, i32* %2, align 4
  br label %612

328:                                              ; preds = %316
  %329 = load i64, i64* %6, align 8
  store i64 %329, i64* %10, align 8
  %330 = load i64, i64* %6, align 8
  %331 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %332 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %333 = add nsw i64 %331, %332
  %334 = sub nsw i64 %330, %333
  store i64 %334, i64* %8, align 8
  %335 = load i64, i64* %7, align 8
  %336 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %337 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %338 = add nsw i64 %336, %337
  %339 = sub nsw i64 %335, %338
  store i64 %339, i64* %9, align 8
  br label %364

340:                                              ; preds = %307
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 16
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %361

345:                                              ; preds = %340
  %346 = load i64, i64* %6, align 8
  %347 = load i64, i64* @SPA_MINDEVSIZE, align 8
  %348 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %349 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %350 = add nsw i64 %348, %349
  %351 = sub nsw i64 %347, %350
  %352 = icmp slt i64 %346, %351
  br i1 %352, label %353, label %361

353:                                              ; preds = %345
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %355 = load i32, i32* @B_TRUE, align 4
  %356 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %357 = load i64, i64* @VDEV_AUX_TOO_SMALL, align 8
  %358 = call i32 @vdev_set_state(%struct.TYPE_24__* %354, i32 %355, i64 %356, i64 %357)
  %359 = load i32, i32* @EOVERFLOW, align 4
  %360 = call i32 @SET_ERROR(i32 %359)
  store i32 %360, i32* %2, align 4
  br label %612

361:                                              ; preds = %345, %340
  store i64 0, i64* %10, align 8
  %362 = load i64, i64* %6, align 8
  store i64 %362, i64* %8, align 8
  %363 = load i64, i64* %7, align 8
  store i64 %363, i64* %9, align 8
  br label %364

364:                                              ; preds = %361, %328
  %365 = load i64, i64* %10, align 8
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = icmp sgt i64 %365, %368
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 5
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = load i32, i32* @B_TRUE, align 4
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 15
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %375, %370, %364
  %380 = load i64, i64* %10, align 8
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 5
  store i64 %380, i64* %382, align 8
  %383 = load i64, i64* %8, align 8
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = icmp slt i64 %383, %386
  br i1 %387, label %388, label %396

388:                                              ; preds = %379
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %390 = load i32, i32* @B_TRUE, align 4
  %391 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %392 = load i64, i64* @VDEV_AUX_BAD_LABEL, align 8
  %393 = call i32 @vdev_set_state(%struct.TYPE_24__* %389, i32 %390, i64 %391, i64 %392)
  %394 = load i32, i32* @EINVAL, align 4
  %395 = call i32 @SET_ERROR(i32 %394)
  store i32 %395, i32* %2, align 4
  br label %612

396:                                              ; preds = %379
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 6
  %399 = load i64, i64* %398, align 8
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %442

401:                                              ; preds = %396
  %402 = load i64, i64* %8, align 8
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 6
  store i64 %402, i64* %404, align 8
  %405 = load i64, i64* %9, align 8
  %406 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 14
  store i64 %405, i64* %407, align 8
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 7
  %410 = load i64, i64* %409, align 8
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %401
  %413 = load i64, i64* %11, align 8
  %414 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %414, i32 0, i32 7
  store i64 %413, i64* %415, align 8
  br label %416

416:                                              ; preds = %412, %401
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 7
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %441

421:                                              ; preds = %416
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 7
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @ASHIFT_MIN, align 8
  %426 = icmp slt i64 %424, %425
  br i1 %426, label %433, label %427

427:                                              ; preds = %421
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 7
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @ASHIFT_MAX, align 8
  %432 = icmp sgt i64 %430, %431
  br i1 %432, label %433, label %441

433:                                              ; preds = %427, %421
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %435 = load i32, i32* @B_TRUE, align 4
  %436 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %437 = load i64, i64* @VDEV_AUX_BAD_ASHIFT, align 8
  %438 = call i32 @vdev_set_state(%struct.TYPE_24__* %434, i32 %435, i64 %436, i64 %437)
  %439 = load i32, i32* @EDOM, align 4
  %440 = call i32 @SET_ERROR(i32 %439)
  store i32 %440, i32* %2, align 4
  br label %612

441:                                              ; preds = %427, %416
  br label %466

442:                                              ; preds = %396
  %443 = load i64, i64* %11, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 12
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 7
  %448 = load i64, i64* %447, align 8
  %449 = icmp sgt i64 %443, %448
  br i1 %449, label %450, label %462

450:                                              ; preds = %442
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 10
  %453 = load %struct.TYPE_21__*, %struct.TYPE_21__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %450
  %458 = load i32, i32* @FM_EREPORT_ZFS_DEVICE_BAD_ASHIFT, align 4
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %460 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %461 = call i32 @zfs_ereport_post(i32 %458, %struct.TYPE_25__* %459, %struct.TYPE_24__* %460, i32* null, i32* null, i32 0, i32 0)
  br label %462

462:                                              ; preds = %457, %450, %442
  %463 = load i64, i64* %9, align 8
  %464 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %464, i32 0, i32 14
  store i64 %463, i64* %465, align 8
  br label %466

466:                                              ; preds = %462, %441
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %498

472:                                              ; preds = %466
  %473 = load i64, i64* %8, align 8
  %474 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %474, i32 0, i32 6
  %476 = load i64, i64* %475, align 8
  %477 = icmp sgt i64 %473, %476
  br i1 %477, label %478, label %488

478:                                              ; preds = %472
  %479 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %479, i32 0, i32 13
  %481 = load i64, i64* %480, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %494, label %483

483:                                              ; preds = %478
  %484 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %484, i32 0, i32 4
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %483, %472
  %489 = load i64, i64* %8, align 8
  %490 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %490, i32 0, i32 6
  %492 = load i64, i64* %491, align 8
  %493 = icmp slt i64 %489, %492
  br i1 %493, label %494, label %498

494:                                              ; preds = %488, %483, %478
  %495 = load i64, i64* %8, align 8
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 6
  store i64 %495, i64* %497, align 8
  br label %498

498:                                              ; preds = %494, %488, %466
  %499 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %500 = call i32 @vdev_set_min_asize(%struct.TYPE_24__* %499)
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 10
  %503 = load %struct.TYPE_21__*, %struct.TYPE_21__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %498
  %508 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %509 = call i32 @vdev_probe(%struct.TYPE_24__* %508, i32* null)
  %510 = call i32 @zio_wait(i32 %509)
  store i32 %510, i32* %5, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %507
  %513 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %514 = load i32, i32* @B_TRUE, align 4
  %515 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %516 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %517 = call i32 @vdev_set_state(%struct.TYPE_24__* %513, i32 %514, i64 %515, i64 %516)
  %518 = load i32, i32* %5, align 4
  store i32 %518, i32* %2, align 4
  br label %612

519:                                              ; preds = %507, %498
  %520 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %520, i32 0, i32 12
  %522 = load %struct.TYPE_24__*, %struct.TYPE_24__** %521, align 8
  %523 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %524 = icmp eq %struct.TYPE_24__* %522, %523
  br i1 %524, label %525, label %575

525:                                              ; preds = %519
  %526 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %526, i32 0, i32 7
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %575

530:                                              ; preds = %525
  %531 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %531, i32 0, i32 8
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* @VDEV_BIAS_NONE, align 8
  %535 = icmp eq i64 %533, %534
  br i1 %535, label %536, label %575

536:                                              ; preds = %530
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 9
  %539 = load i64, i64* %538, align 8
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %575

541:                                              ; preds = %536
  %542 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %542, i32 0, i32 11
  %544 = load i32*, i32** %543, align 8
  %545 = icmp eq i32* %544, null
  br i1 %545, label %546, label %575

546:                                              ; preds = %541
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %547, i32 0, i32 7
  %549 = load i64, i64* %548, align 8
  %550 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = icmp sgt i64 %549, %552
  br i1 %553, label %554, label %560

554:                                              ; preds = %546
  %555 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %555, i32 0, i32 7
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 0
  store i64 %557, i64* %559, align 8
  br label %560

560:                                              ; preds = %554, %546
  %561 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %562 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %561, i32 0, i32 7
  %563 = load i64, i64* %562, align 8
  %564 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = icmp slt i64 %563, %566
  br i1 %567, label %568, label %574

568:                                              ; preds = %560
  %569 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %569, i32 0, i32 7
  %571 = load i64, i64* %570, align 8
  %572 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %572, i32 0, i32 1
  store i64 %571, i64* %573, align 8
  br label %574

574:                                              ; preds = %568, %560
  br label %575

575:                                              ; preds = %574, %541, %536, %530, %525, %519
  %576 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %577 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %576, i32 0, i32 10
  %578 = load %struct.TYPE_21__*, %struct.TYPE_21__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %578, i32 0, i32 1
  %580 = load i64, i64* %579, align 8
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %611

582:                                              ; preds = %575
  %583 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %611, label %587

587:                                              ; preds = %582
  %588 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %589 = call i64 @vdev_resilver_needed(%struct.TYPE_24__* %588, i32* null, i32* null)
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %611

591:                                              ; preds = %587
  %592 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %593 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 8
  %595 = call i64 @dsl_scan_resilvering(i32 %594)
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %606

597:                                              ; preds = %591
  %598 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %599 = load i32, i32* @SPA_FEATURE_RESILVER_DEFER, align 4
  %600 = call i64 @spa_feature_is_enabled(%struct.TYPE_25__* %598, i32 %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %606

602:                                              ; preds = %597
  %603 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %604 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %605 = call i32 @vdev_set_deferred_resilver(%struct.TYPE_25__* %603, %struct.TYPE_24__* %604)
  br label %610

606:                                              ; preds = %597, %591
  %607 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %608 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %609 = call i32 @spa_async_request(%struct.TYPE_25__* %607, i32 %608)
  br label %610

610:                                              ; preds = %606, %602
  br label %611

611:                                              ; preds = %610, %587, %582, %575
  store i32 0, i32* %2, align 4
  br label %612

612:                                              ; preds = %611, %512, %433, %388, %353, %320, %276, %231, %203, %138, %112, %94
  %613 = load i32, i32* %2, align 4
  ret i32 %613
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_25__*, i64, i32) #1

declare dso_local i64 @vdev_get_min_asize(%struct.TYPE_24__*) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_24__*, i32, i64, i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zio_handle_device_injection(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i64 @P2ALIGN(i64, i64) #1

declare dso_local i32 @zfs_ereport_post(i32, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @vdev_set_min_asize(%struct.TYPE_24__*) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @vdev_probe(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @vdev_resilver_needed(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @dsl_scan_resilvering(i32) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @vdev_set_deferred_resilver(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
