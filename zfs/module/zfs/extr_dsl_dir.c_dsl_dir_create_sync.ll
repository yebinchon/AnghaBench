; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_create_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_create_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }

@DMU_OT_DSL_DIR = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_ROOT_DATASET = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@DMU_OT_DSL_PROPS = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@DMU_OT_DSL_DIR_CHILD_MAP = common dso_local global i32 0, align 4
@SPA_VERSION_USED_BREAKDOWN = common dso_local global i64 0, align 8
@DD_FLAG_USED_BREAKDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dir_create_sync(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @DMU_OT_DSL_DIR, align 4
  %18 = load i32, i32* @DMU_OT_DSL_DIR, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @dmu_object_alloc(i32* %16, i32 %17, i32 0, i32 %18, i32 32, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = call %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_14__* %25)
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @zap_add(i32* %24, i32 %28, i8* %29, i32 4, i32 1, i32* %10, i32* %30)
  %32 = call i32 @VERIFY0(i32 %31)
  br label %40

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %36 = load i8*, i8** @DMU_POOL_ROOT_DATASET, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @zap_add(i32* %34, i32 %35, i8* %36, i32 4, i32 1, i32* %10, i32* %37)
  %39 = call i32 @VERIFY0(i32 %38)
  br label %40

40:                                               ; preds = %33, %23
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @dmu_bonus_hold(i32* %41, i32 %42, i32 %43, %struct.TYPE_16__** %12)
  %45 = call i32 @VERIFY0(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @dmu_buf_will_dirty(%struct.TYPE_16__* %46, i32* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %11, align 8
  %52 = call i32 (...) @gethrestime_sec()
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %40
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @dsl_fs_ss_count_adjust(%struct.TYPE_14__* %63, i32 1, i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %57, %40
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @DMU_OT_DSL_PROPS, align 4
  %70 = load i32, i32* @DMU_OT_NONE, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i8* @zap_create(i32* %68, i32 %69, i32 %70, i32 0, i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* @DMU_OT_DSL_DIR_CHILD_MAP, align 4
  %77 = load i32, i32* @DMU_OT_NONE, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i8* @zap_create(i32* %75, i32 %76, i32 %77, i32 0, i32* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @spa_version(i32 %84)
  %86 = load i64, i64* @SPA_VERSION_USED_BREAKDOWN, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %67
  %89 = load i32, i32* @DD_FLAG_USED_BREAKDOWN, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %67
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = load i32, i32* @FTAG, align 4
  %97 = call i32 @dmu_buf_rele(%struct.TYPE_16__* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @dmu_object_alloc(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32*, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32 @dsl_fs_ss_count_adjust(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i8* @zap_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
