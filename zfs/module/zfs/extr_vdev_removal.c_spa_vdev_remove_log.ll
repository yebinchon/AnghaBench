; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_log.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_15__, i32, i32, i32, %struct.TYPE_16__*, i32*, i32* }
%struct.TYPE_15__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@TXG_DEFER_SIZE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_CANCELED = common dso_local global i32 0, align 4
@VDEV_TRIM_CANCELED = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_REMOVE_DEV = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_LABEL_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64*)* @spa_vdev_remove_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_remove_log(%struct.TYPE_16__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = icmp eq %struct.TYPE_16__* %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @metaslab_group_passivate(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @TXG_DEFER_SIZE, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @spa_vdev_config_exit(i32* %31, i32* null, i64 %37, i32 0, i32 %38)
  %40 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @spa_reset_logs(i32* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %2
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @spa_vdev_config_enter(i32* %51)
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @metaslab_group_activate(i32* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %150

60:                                               ; preds = %50
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ASSERT0(i64 %64)
  %66 = load i32, i32* @B_TRUE, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load i32, i32* @VDD_DTL, align 4
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @vdev_dirty_leaves(%struct.TYPE_16__* %69, i32 %70, i64 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = call i32 @vdev_config_dirty(%struct.TYPE_16__* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = call i32 @vdev_metaslab_fini(%struct.TYPE_16__* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @spa_log_sm_set_blocklimit(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i64*, i64** %5, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @spa_vdev_config_exit(i32* %80, i32* null, i64 %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = load i32, i32* @VDEV_INITIALIZE_CANCELED, align 4
  %87 = call i32 @vdev_initialize_stop_all(%struct.TYPE_16__* %85, i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = load i32, i32* @VDEV_TRIM_CANCELED, align 4
  %90 = call i32 @vdev_trim_stop_all(%struct.TYPE_16__* %88, i32 %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = call i32 @vdev_autotrim_stop_wait(%struct.TYPE_16__* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @spa_vdev_config_enter(i32* %93)
  %95 = load i64*, i64** %5, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_DEV, align 4
  %99 = call i32* @spa_event_create(i32* %96, %struct.TYPE_16__* %97, i32* null, i32 %98)
  store i32* %99, i32** %9, align 8
  %100 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* @SCL_ALL, align 8
  %104 = load i32, i32* @RW_WRITER, align 4
  %105 = call i64 @spa_config_held(i32* %102, i64 %103, i32 %104)
  %106 = load i64, i64* @SCL_ALL, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @ASSERT(i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ASSERT0(i64 %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ASSERT0(i64 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = load i32, i32* @VDEV_LABEL_REMOVE, align 4
  %120 = call i32 @vdev_label_init(%struct.TYPE_16__* %118, i32 0, i32 %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 5
  %123 = call i64 @list_link_active(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %60
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = call i32 @vdev_state_clean(%struct.TYPE_16__* %126)
  br label %128

128:                                              ; preds = %125, %60
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = call i64 @list_link_active(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = call i32 @vdev_config_clean(%struct.TYPE_16__* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ASSERT0(i64 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = call i32 @vdev_remove_make_hole_and_free(%struct.TYPE_16__* %142)
  %144 = load i32*, i32** %9, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @spa_event_post(i32* %147)
  br label %149

149:                                              ; preds = %146, %136
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %56
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @metaslab_group_passivate(i32*) #1

declare dso_local i32 @spa_vdev_config_exit(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @spa_reset_logs(i32*) #1

declare dso_local i64 @spa_vdev_config_enter(i32*) #1

declare dso_local i32 @metaslab_group_activate(i32*) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i32 @vdev_dirty_leaves(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_metaslab_fini(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_log_sm_set_blocklimit(i32*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vdev_trim_stop_all(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vdev_autotrim_stop_wait(%struct.TYPE_16__*) #1

declare dso_local i32* @spa_event_create(i32*, %struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i32 @vdev_label_init(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @list_link_active(i32*) #1

declare dso_local i32 @vdev_state_clean(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_config_clean(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_remove_make_hole_and_free(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_event_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
