; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_in_progress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ZPOOL_CHECKPOINT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SPA_VERSION_DEADLISTS = common dso_local global i32 0, align 4
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DSS_SCANNING = common dso_local global i32 0, align 4
@POOL_SCAN_SCRUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unrecognized value for activity %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32, i32, i32*)* @spa_activity_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_activity_in_progress(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 3
  %18 = call i32 @MUTEX_HELD(i32* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %140 [
    i32 134, label %21
    i32 133, label %38
    i32 132, label %63
    i32 130, label %69
    i32 131, label %94
    i32 129, label %103
    i32 128, label %103
  ]

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %24 = call i32 @spa_feature_is_active(%struct.TYPE_18__* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = call i32 @spa_meta_objset(%struct.TYPE_18__* %27)
  %29 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %30 = load i32, i32* @DMU_POOL_ZPOOL_CHECKPOINT, align 4
  %31 = call i32 @zap_contains(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %26, %21
  %35 = phi i1 [ false, %21 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %143

38:                                               ; preds = %5
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = call i32 @spa_version(%struct.TYPE_18__* %39)
  %41 = load i32, i32* @SPA_VERSION_DEADLISTS, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = call i32 @bpobj_is_empty(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43, %38
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %53 = call i32 @spa_feature_is_active(%struct.TYPE_18__* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = call i32 @spa_livelist_delete_check(%struct.TYPE_18__* %56)
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %55, %50, %43
  %60 = phi i1 [ true, %50 ], [ true, %43 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %143

63:                                               ; preds = %5
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @spa_vdev_initializing(%struct.TYPE_18__* %64, i32 %65, i32 %66, i32* %67)
  store i32 %68, i32* %11, align 4
  br label %143

69:                                               ; preds = %5
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = call i32 @mutex_exit(i32* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = load i32, i32* @SCL_CONFIG, align 4
  %75 = load i32, i32* @SCL_STATE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @FTAG, align 4
  %78 = load i32, i32* @RW_READER, align 4
  %79 = call i32 @spa_config_enter(%struct.TYPE_18__* %73, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = call i32 @mutex_enter(i32* %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @vdev_replace_in_progress(i32 %85)
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = load i32, i32* @SCL_CONFIG, align 4
  %90 = load i32, i32* @SCL_STATE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 @spa_config_exit(%struct.TYPE_18__* %88, i32 %91, i32 %92)
  br label %143

94:                                               ; preds = %5
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DSS_SCANNING, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  br label %143

103:                                              ; preds = %5, %5
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  store %struct.TYPE_19__* %108, %struct.TYPE_19__** %15, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @POOL_SCAN_SCRUB, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DSS_SCANNING, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %124 = call i32 @dsl_scan_is_paused_scrub(%struct.TYPE_19__* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %103
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 128
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %131, %134
  br label %136

136:                                              ; preds = %130, %127, %103
  %137 = phi i1 [ false, %127 ], [ false, %103 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  br label %143

140:                                              ; preds = %5
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %136, %94, %69, %63, %59, %34
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @zap_contains(i32, i32, i32) #1

declare dso_local i32 @spa_meta_objset(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_version(%struct.TYPE_18__*) #1

declare dso_local i32 @bpobj_is_empty(i32*) #1

declare dso_local i32 @spa_livelist_delete_check(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_vdev_initializing(%struct.TYPE_18__*, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @vdev_replace_in_progress(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @dsl_scan_is_paused_scrub(%struct.TYPE_19__*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
