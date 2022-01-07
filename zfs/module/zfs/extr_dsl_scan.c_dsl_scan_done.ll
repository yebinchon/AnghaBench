; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__, i32*, i8*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32, i8*, i8* }
%struct.TYPE_31__ = type { i32 }

@dsl_scan_done.old_names = internal global [9 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [15 x i8] c"scrub_bookmark\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"scrub_ddt_bookmark\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"scrub_ddt_class_max\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"scrub_queue\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"scrub_min_txg\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"scrub_max_txg\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"scrub_func\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"scrub_errors\00", align 1
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DSF_SCRUB_PAUSED = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@DSS_FINISHED = common dso_local global i32 0, align 4
@DSS_CANCELED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"scan aborted, restarting\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"errors=%llu\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"scan cancelled\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"scan done\00", align 1
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ESC_ZFS_RESILVER_FINISH = common dso_local global i32 0, align 4
@ESC_ZFS_SCRUB_FINISH = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4
@SPA_FEATURE_RESILVER_DEFER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"starting deferred resilver\00", align 1
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@ZPOOL_ERRATA_ZOL_2094_SCRUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i64, %struct.TYPE_31__*)* @dsl_scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_done(%struct.TYPE_29__* %0, i64 %1, %struct.TYPE_31__* %2) #0 {
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %6, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %7, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x i8*], [9 x i8*]* @dsl_scan_done.old_names, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i8*], [9 x i8*]* @dsl_scan_done.old_names, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %33 = call i32 @zap_remove(i32 %26, i32 %27, i8* %31, %struct.TYPE_31__* %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %52 = call i32 @dmu_object_free(i32 %46, i64 %50, %struct.TYPE_31__* %51)
  %53 = call i32 @VERIFY0(i32 %52)
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %43, %37
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %59 = call i32 @scan_ds_queue_clear(%struct.TYPE_29__* %58)
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %61 = call i32 @scan_ds_prefetch_queue_clear(%struct.TYPE_29__* %60)
  %62 = load i32, i32* @DSF_SCRUB_PAUSED, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = call i32 @dsl_scan_is_running(%struct.TYPE_29__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %57
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  br label %249

80:                                               ; preds = %57
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %87 = call i32 @scan_io_queues_destroy(%struct.TYPE_29__* %86)
  %88 = load i8*, i8** @B_FALSE, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @taskq_destroy(i32* %98)
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %85
  br label %103

103:                                              ; preds = %102, %80
  %104 = load i64, i64* %5, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @DSS_FINISHED, align 4
  br label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @DSS_CANCELED, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %116 = call i32 @spa_notify_waiters(%struct.TYPE_28__* %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %119 = call i64 @dsl_scan_restarting(%struct.TYPE_29__* %117, %struct.TYPE_31__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %125 = call i64 @spa_get_errlog_size(%struct.TYPE_28__* %124)
  %126 = trunc i64 %125 to i32
  %127 = call i32 @spa_history_log_internal(%struct.TYPE_28__* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_31__* %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %146

128:                                              ; preds = %110
  %129 = load i64, i64* %5, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %135 = call i64 @spa_get_errlog_size(%struct.TYPE_28__* %134)
  %136 = trunc i64 %135 to i32
  %137 = call i32 @spa_history_log_internal(%struct.TYPE_28__* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_31__* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  br label %145

138:                                              ; preds = %128
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %142 = call i64 @spa_get_errlog_size(%struct.TYPE_28__* %141)
  %143 = trunc i64 %142 to i32
  %144 = call i32 @spa_history_log_internal(%struct.TYPE_28__* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_31__* %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %138, %131
  br label %146

146:                                              ; preds = %145, %121
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %148 = call i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_29__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %229

150:                                              ; preds = %146
  %151 = load i8*, i8** @B_FALSE, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @B_FALSE, align 8
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load i64, i64* %5, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %190

159:                                              ; preds = %150
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %161 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %162 = call i32 @spa_feature_is_active(%struct.TYPE_28__* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %190, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @B_TRUE, align 4
  %176 = call i32 @vdev_dtl_reassess(i32 %167, i32 %170, i32 %174, i32 %175)
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %164
  %184 = load i32, i32* @ESC_ZFS_RESILVER_FINISH, align 4
  br label %187

185:                                              ; preds = %164
  %186 = load i32, i32* @ESC_ZFS_SCRUB_FINISH, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = call i32 @spa_event_notify(%struct.TYPE_28__* %177, i32* null, i32* null, i32 %188)
  br label %199

190:                                              ; preds = %159, %150
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @B_TRUE, align 4
  %198 = call i32 @vdev_dtl_reassess(i32 %193, i32 %196, i32 0, i32 %197)
  br label %199

199:                                              ; preds = %190, %187
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %201 = call i32 @spa_errlog_rotate(%struct.TYPE_28__* %200)
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %203 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %204 = call i32 @spa_async_request(%struct.TYPE_28__* %202, i32 %203)
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %206 = load i32, i32* @SPA_FEATURE_RESILVER_DEFER, align 4
  %207 = call i64 @spa_feature_is_enabled(%struct.TYPE_28__* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %199
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %214 = call i64 @dsl_scan_clear_deferred(i32 %212, %struct.TYPE_31__* %213)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %209
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %221 = call i64 @spa_get_errlog_size(%struct.TYPE_28__* %220)
  %222 = trunc i64 %221 to i32
  %223 = call i32 @spa_history_log_internal(%struct.TYPE_28__* %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_31__* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %222)
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %225 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %226 = call i32 @spa_async_request(%struct.TYPE_28__* %224, i32 %225)
  br label %227

227:                                              ; preds = %217, %209
  br label %228

228:                                              ; preds = %227, %199
  br label %229

229:                                              ; preds = %228, %146
  %230 = call i32 (...) @gethrestime_sec()
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ZPOOL_ERRATA_ZOL_2094_SCRUB, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  br label %242

242:                                              ; preds = %239, %229
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %244 = call i32 @dsl_scan_is_running(%struct.TYPE_29__* %243)
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @ASSERT(i32 %247)
  br label %249

249:                                              ; preds = %242, %72
  ret void
}

declare dso_local i32 @zap_remove(i32, i32, i8*, %struct.TYPE_31__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_free(i32, i64, %struct.TYPE_31__*) #1

declare dso_local i32 @scan_ds_queue_clear(%struct.TYPE_29__*) #1

declare dso_local i32 @scan_ds_prefetch_queue_clear(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_scan_is_running(%struct.TYPE_29__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @scan_io_queues_destroy(%struct.TYPE_29__*) #1

declare dso_local i32 @taskq_destroy(i32*) #1

declare dso_local i32 @spa_notify_waiters(%struct.TYPE_28__*) #1

declare dso_local i64 @dsl_scan_restarting(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_28__*, i8*, %struct.TYPE_31__*, i8*, i32) #1

declare dso_local i64 @spa_get_errlog_size(%struct.TYPE_28__*) #1

declare dso_local i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_29__*) #1

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @vdev_dtl_reassess(i32, i32, i32, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_28__*, i32*, i32*, i32) #1

declare dso_local i32 @spa_errlog_rotate(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @dsl_scan_clear_deferred(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @gethrestime_sec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
