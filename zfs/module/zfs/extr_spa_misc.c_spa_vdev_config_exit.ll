; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_vdev_config_exit.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_vdev_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, i32*, i32 }
%struct.TYPE_21__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@VDEV_INITIALIZE_CANCELED = common dso_local global i32 0, align 4
@VDEV_TRIM_CANCELED = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_vdev_config_exit(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = call i64 @spa_last_synced_txg(%struct.TYPE_23__* %16)
  %18 = icmp sgt i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @B_FALSE, align 4
  %27 = call i32 @vdev_dtl_reassess(i32 %25, i32 0, i32 0, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = call i32 @list_is_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @B_TRUE, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30, %5
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %43 = call i32 @spa_normal_class(%struct.TYPE_23__* %42)
  %44 = call i64 @metaslab_class_validate(i32 %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = call i32 @spa_log_class(%struct.TYPE_23__* %48)
  %50 = call i64 @metaslab_class_validate(i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = call i32 @spa_special_class(%struct.TYPE_23__* %54)
  %56 = call i64 @metaslab_class_validate(i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = call i32 @spa_dedup_class(%struct.TYPE_23__* %60)
  %62 = call i64 @metaslab_class_validate(i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = load i32, i32* @SCL_ALL, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %69 = call i32 @spa_config_exit(%struct.TYPE_23__* %66, i32 %67, %struct.TYPE_23__* %68)
  %70 = load i64, i64* @zio_injection_enabled, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %41
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @zio_handle_panic_injection(%struct.TYPE_23__* %73, i8* %74, i32 0)
  br label %76

76:                                               ; preds = %72, %41
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @txg_wait_synced(i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = icmp ne %struct.TYPE_22__* %86, null
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ true, %88 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %98
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = call i32 @mutex_enter(i32* %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %113 = load i32, i32* @VDEV_INITIALIZE_CANCELED, align 4
  %114 = call i32 @vdev_initialize_stop(%struct.TYPE_22__* %112, i32 %113, i32* null)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = call i32 @mutex_exit(i32* %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = call i32 @mutex_enter(i32* %119)
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = load i32, i32* @VDEV_TRIM_CANCELED, align 4
  %123 = call i32 @vdev_trim_stop(%struct.TYPE_22__* %121, i32 %122, i32* null)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  %126 = call i32 @mutex_exit(i32* %125)
  br label %127

127:                                              ; preds = %108, %98
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %129 = call i32 @vdev_autotrim_stop_wait(%struct.TYPE_22__* %128)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = load i32, i32* @SCL_ALL, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = load i32, i32* @RW_WRITER, align 4
  %134 = call i32 @spa_config_enter(%struct.TYPE_23__* %130, i32 %131, %struct.TYPE_23__* %132, i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = call i32 @vdev_free(%struct.TYPE_22__* %135)
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %138 = load i32, i32* @SCL_ALL, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %140 = call i32 @spa_config_exit(%struct.TYPE_23__* %137, i32 %138, %struct.TYPE_23__* %139)
  br label %141

141:                                              ; preds = %127, %85
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = load i32, i32* @B_FALSE, align 4
  %147 = load i32, i32* @B_TRUE, align 4
  %148 = call i32 @spa_write_cachefile(%struct.TYPE_23__* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_last_synced_txg(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_dtl_reassess(i32, i32, i32, i32) #1

declare dso_local i32 @list_is_empty(i32*) #1

declare dso_local i64 @metaslab_class_validate(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_log_class(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_special_class(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_dedup_class(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_23__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @zio_handle_panic_injection(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @vdev_initialize_stop(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_trim_stop(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @vdev_autotrim_stop_wait(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_23__*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
