; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_setup_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_setup_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__, i32, i32, i64, i64, i64, i64, %struct.TYPE_29__* }
%struct.TYPE_26__ = type { i64, i64, i32, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_27__* }
%struct.TYPE_31__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }

@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCAN_FUNCS = common dso_local global i64 0, align 8
@DSS_SCANNING = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@zfs_scrub_ddt_class_max = common dso_local global i64 0, align 8
@ESC_ZFS_RESILVER_START = common dso_local global i32 0, align 4
@ESC_ZFS_SCRUB_START = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i64 0, align 8
@DDT_CLASS_DITTO = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@SPA_VERSION_DSL_SCRUB = common dso_local global i64 0, align 8
@DMU_OT_ZAP_OTHER = common dso_local global i64 0, align 8
@DMU_OT_SCAN_QUEUE = common dso_local global i64 0, align 8
@DMU_OT_NONE = common dso_local global i32 0, align 4
@SYNC_MANDATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"scan setup\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"func=%u mintxg=%llu maxtxg=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_30__*)* @dsl_scan_setup_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_setup_sync(i8* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %4, align 8
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %11 = call %struct.TYPE_24__* @dmu_tx_pool(%struct.TYPE_30__* %10)
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %8, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %9, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %23 = call i32 @dsl_scan_is_running(%struct.TYPE_28__* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @POOL_SCAN_NONE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @POOL_SCAN_FUNCS, align 8
  %36 = icmp slt i64 %34, %35
  br label %37

37:                                               ; preds = %32, %2
  %38 = phi i1 [ false, %2 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = call i32 @bzero(%struct.TYPE_26__* %42, i32 64)
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 8
  store i64 %45, i64* %48, align 8
  %49 = load i32, i32* @DSS_SCANNING, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* @DDT_CLASSES, align 8
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 3
  store i64 %63, i64* %66, align 8
  %67 = call i32 (...) @gethrestime_sec()
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 6
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 4
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @B_FALSE, align 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = call i32 @spa_scan_stat_init(%struct.TYPE_27__* %94)
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %97 = call i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_28__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %143

99:                                               ; preds = %37
  %100 = load i64, i64* @zfs_scrub_ddt_class_max, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 3
  store i64 %100, i64* %103, align 8
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %105, align 8
  %107 = call i32 @vdev_config_dirty(%struct.TYPE_32__* %106)
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %109, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = call i64 @vdev_resilver_needed(%struct.TYPE_32__* %110, i64* %113, i64* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %99
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %121 = load i32, i32* @ESC_ZFS_RESILVER_START, align 4
  %122 = call i32 @spa_event_notify(%struct.TYPE_27__* %120, i32* null, i32* null, i32 %121)
  br label %127

123:                                              ; preds = %99
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %125 = load i32, i32* @ESC_ZFS_SCRUB_START, align 4
  %126 = call i32 @spa_event_notify(%struct.TYPE_27__* %124, i32* null, i32* null, i32 %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @B_TRUE, align 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TXG_INITIAL, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = load i64, i64* @DDT_CLASS_DITTO, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  store i64 %138, i64* %141, align 8
  br label %142

142:                                              ; preds = %137, %127
  br label %143

143:                                              ; preds = %142, %37
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %145, align 8
  %147 = icmp eq %struct.TYPE_31__* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load i32, i32* @KM_SLEEP, align 4
  %150 = call %struct.TYPE_31__* @vmem_alloc(i32 4, i32 %149)
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 1
  store %struct.TYPE_31__* %150, %struct.TYPE_31__** %152, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 1
  %157 = load i32, i32* @MUTEX_DEFAULT, align 4
  %158 = call i32 @mutex_init(i32* %156, i32* null, i32 %157, i32* null)
  br label %159

159:                                              ; preds = %148, %143
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 0
  %164 = call i32 @bzero(%struct.TYPE_26__* %163, i32 64)
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %166 = call i64 @spa_version(%struct.TYPE_27__* %165)
  %167 = load i64, i64* @SPA_VERSION_DSL_SCRUB, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i64, i64* @DMU_OT_ZAP_OTHER, align 8
  store i64 %170, i64* %7, align 8
  br label %171

171:                                              ; preds = %169, %159
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i64, i64* %7, align 8
  br label %181

179:                                              ; preds = %171
  %180 = load i64, i64* @DMU_OT_SCAN_QUEUE, align 8
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i64 [ %178, %177 ], [ %180, %179 ]
  %183 = load i32, i32* @DMU_OT_NONE, align 4
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %185 = call i32 @zap_create(i32 %174, i64 %182, i32 %183, i32 0, %struct.TYPE_30__* %184)
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 8
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  %193 = call i32 @bcopy(%struct.TYPE_26__* %190, i32* %192, i32 64)
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %196 = load i32, i32* @SYNC_MANDATORY, align 4
  %197 = call i32 @dsl_scan_sync_state(%struct.TYPE_28__* %194, %struct.TYPE_30__* %195, i32 %196)
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %200 = load i64*, i64** %6, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @spa_history_log_internal(%struct.TYPE_27__* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %201, i32 %206, i32 %211)
  ret void
}

declare dso_local %struct.TYPE_24__* @dmu_tx_pool(%struct.TYPE_30__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_scan_is_running(%struct.TYPE_28__*) #1

declare dso_local i32 @bzero(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32 @spa_scan_stat_init(%struct.TYPE_27__*) #1

declare dso_local i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_28__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_32__*) #1

declare dso_local i64 @vdev_resilver_needed(%struct.TYPE_32__*, i64*, i64*) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_27__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_31__* @vmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i64 @spa_version(%struct.TYPE_27__*) #1

declare dso_local i32 @zap_create(i32, i64, i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @dsl_scan_sync_state(%struct.TYPE_28__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_27__*, i8*, %struct.TYPE_30__*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
