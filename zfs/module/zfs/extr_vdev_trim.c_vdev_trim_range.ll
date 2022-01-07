; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_range.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64*, i64*, i64, i32, %struct.TYPE_17__*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32 }

@TRIM_TYPE_MANUAL = common dso_local global i64 0, align 8
@zfs_trim_queue_limit = common dso_local global i64 0, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@SCL_STATE_ALL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@vdev_trim_zap_update_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_RESERVED = common dso_local global i32 0, align 4
@TRIM_TYPE_AUTO = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@vdev_trim_cb = common dso_local global i32 0, align 4
@vdev_autotrim_cb = common dso_local global i32 0, align 4
@ZIO_PRIORITY_TRIM = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i64)* @vdev_trim_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_trim_range(%struct.TYPE_16__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %9, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %21 = call i32 @mutex_enter(i32* %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %46, %27
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = call i64 @vdev_trim_should_stop(%struct.TYPE_15__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = call i64 @vdev_trim_calculate_rate(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br label %44

44:                                               ; preds = %37, %33, %28
  %45 = phi i1 [ false, %33 ], [ false, %28 ], [ %43, %37 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 6
  %51 = call i64 (...) @ddi_get_lbolt()
  %52 = call i64 @MSEC_TO_TICK(i32 10)
  %53 = add nsw i64 %51, %52
  %54 = call i32 @cv_timedwait_sig(i32* %48, i32* %50, i64 %53)
  br label %28

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %3
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %76, %56
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = load i64, i64* @zfs_trim_queue_limit, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %62
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 6
  %81 = call i32 @cv_wait(i32* %78, i32* %80)
  br label %62

82:                                               ; preds = %62
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 6
  %94 = call i32 @mutex_exit(i32* %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = call %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_17__* %95)
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @dmu_tx_create_dd(i32 %98)
  store i32* %99, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* @TXG_WAIT, align 4
  %102 = call i32 @dmu_tx_assign(i32* %100, i32 %101)
  %103 = call i32 @VERIFY0(i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i64 @dmu_tx_get_txg(i32* %104)
  store i64 %105, i64* %11, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %107 = load i32, i32* @SCL_STATE_ALL, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = load i32, i32* @RW_READER, align 4
  %110 = call i32 @spa_config_enter(%struct.TYPE_17__* %106, i32 %107, %struct.TYPE_15__* %108, i32 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = call i32 @mutex_enter(i32* %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %82
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @TXG_MASK, align 8
  %125 = and i64 %123, %124
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %119
  %130 = load i32, i32* @KM_SLEEP, align 4
  %131 = call i64* @kmem_zalloc(i32 8, i32 %130)
  store i64* %131, i64** %12, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %12, align 8
  store i64 %134, i64* %135, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %137 = call %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_17__* %136)
  %138 = load i32, i32* @vdev_trim_zap_update_sync, align 4
  %139 = load i64*, i64** %12, align 8
  %140 = load i32, i32* @ZFS_SPACE_CHECK_RESERVED, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @dsl_sync_task_nowait(%struct.TYPE_18__* %137, i32 %138, i64* %139, i32 2, i32 %140, i32* %141)
  br label %143

143:                                              ; preds = %129, %119, %82
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = call i64 @vdev_trim_should_stop(%struct.TYPE_15__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @TRIM_TYPE_AUTO, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %194

159:                                              ; preds = %153
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @vdev_autotrim_should_stop(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %159, %149
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 6
  %168 = call i32 @mutex_enter(i32* %167)
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 6
  %180 = call i32 @mutex_exit(i32* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = load i32, i32* @SCL_STATE_ALL, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = call i32 @spa_config_exit(%struct.TYPE_17__* %183, i32 %184, %struct.TYPE_15__* %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = call i32 @mutex_exit(i32* %188)
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @dmu_tx_commit(i32* %190)
  %192 = load i32, i32* @EINTR, align 4
  %193 = call i32 @SET_ERROR(i32 %192)
  store i32 %193, i32* %4, align 4
  br label %246

194:                                              ; preds = %159, %153
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 4
  %197 = call i32 @mutex_exit(i32* %196)
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %194
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* %7, align 8
  %206 = add i64 %204, %205
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i64*, i64** %208, align 8
  %210 = load i64, i64* %11, align 8
  %211 = load i64, i64* @TXG_MASK, align 8
  %212 = and i64 %210, %211
  %213 = getelementptr inbounds i64, i64* %209, i64 %212
  store i64 %206, i64* %213, align 8
  br label %214

214:                                              ; preds = %203, %194
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* @TXG_MASK, align 8
  %220 = and i64 %218, %219
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = load i64, i64* %6, align 8
  %225 = load i64, i64* %7, align 8
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @TRIM_TYPE_MANUAL, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %214
  %232 = load i32, i32* @vdev_trim_cb, align 4
  br label %235

233:                                              ; preds = %214
  %234 = load i32, i32* @vdev_autotrim_cb, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  %237 = load i32, i32* @ZIO_PRIORITY_TRIM, align 4
  %238 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @zio_trim(i32 %222, %struct.TYPE_15__* %223, i64 %224, i64 %225, i32 %236, i32* null, i32 %237, i32 %238, i32 %241)
  %243 = call i32 @zio_nowait(i32 %242)
  %244 = load i32*, i32** %10, align 8
  %245 = call i32 @dmu_tx_commit(i32* %244)
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %235, %165
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @vdev_trim_should_stop(%struct.TYPE_15__*) #1

declare dso_local i64 @vdev_trim_calculate_rate(%struct.TYPE_16__*) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i64) #1

declare dso_local i64 @ddi_get_lbolt(...) #1

declare dso_local i64 @MSEC_TO_TICK(i32) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_18__* @spa_get_dsl(%struct.TYPE_17__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i64 @dmu_tx_get_txg(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_17__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i64* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_18__*, i32, i64*, i32, i32, i32*) #1

declare dso_local i64 @vdev_autotrim_should_stop(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_17__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_trim(i32, %struct.TYPE_15__*, i64, i64, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
