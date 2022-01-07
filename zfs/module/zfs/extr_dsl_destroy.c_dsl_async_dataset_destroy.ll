; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_async_dataset_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_async_dataset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_BPTREE_OBJ = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DD_USED_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*)* @dsl_async_dataset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_async_dataset_destroy(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = call i32 @dmu_objset_from_ds(%struct.TYPE_13__* %12, i32** %8)
  %14 = call i32 @VERIFY0(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_12__* @dmu_tx_pool(i32* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @dmu_objset_zil(i32* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @zil_destroy_sync(i32 %21, i32* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %28 = call i32 @spa_feature_is_active(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %11, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @spa_feature_incr(i32 %36, i32 %37, i32* %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @bptree_alloc(i32* %40, i32* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %47 = load i32, i32* @DMU_POOL_BPTREE_OBJ, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @zap_add(i32* %45, i32 %46, i32 %47, i32 4, i32 1, i32* %49, i32* %50)
  %52 = call i32 @VERIFY0(i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i64, i64* @B_TRUE, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %30, %2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_14__* @dsl_dir_phys(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_14__* @dsl_dir_phys(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_14__* @dsl_dir_phys(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = call i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_13__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %63
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %86)
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %89, %90
  br label %92

92:                                               ; preds = %85, %63
  %93 = phi i1 [ true, %63 ], [ %91, %85 ]
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* @RW_READER, align 4
  %99 = load i32, i32* @FTAG, align 4
  %100 = call i32 @rrw_enter(i32* %97, i32 %98, i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %108)
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @bptree_add(i32* %101, i32 %104, i32* %107, i32 %111, i32 %112, i32 %113, i32 %114, i32* %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* @FTAG, align 4
  %120 = call i32 @rrw_exit(i32* %118, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DD_USED_HEAD, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 0, %125
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 0, %127
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @dsl_dir_diduse_space(i32 %123, i32 %124, i32 %126, i32 %128, i32 %130, i32* %131)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DD_USED_HEAD, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @dsl_dir_diduse_space(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32* %140)
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_13__*, i32**) #1

declare dso_local %struct.TYPE_12__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @zil_destroy_sync(i32, i32*) #1

declare dso_local i32 @dmu_objset_zil(i32*) #1

declare dso_local i32 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @spa_feature_incr(i32, i32, i32*) #1

declare dso_local i32 @bptree_alloc(i32*, i32*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_14__* @dsl_dir_phys(i32) #1

declare dso_local i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @bptree_add(i32*, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @dsl_dir_diduse_space(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
