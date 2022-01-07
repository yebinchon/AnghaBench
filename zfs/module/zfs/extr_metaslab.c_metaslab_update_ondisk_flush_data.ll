; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_update_ondisk_flush_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_update_ondisk_flush_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@SPA_FEATURE_LOG_SPACEMAP = common dso_local global i32 0, align 4
@VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DMU_OTN_UINT64_METADATA = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @metaslab_update_ondisk_flush_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metaslab_update_ondisk_flush_data(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @spa_meta_objset(i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @SPA_FEATURE_LOG_SPACEMAP, align 4
  %25 = call i32 @spa_feature_is_active(i32* %23, i32 %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = call i32 @metaslab_unflushed_txg(%struct.TYPE_11__* %28)
  store i32 %29, i32* %27, align 4
  store i32 4, i32* %9, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, align 4
  %40 = call i32 @zap_lookup(i32* %35, i32 %38, i32 %39, i32 4, i32 1, i32* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %2
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @DMU_OTN_UINT64_METADATA, align 4
  %47 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %48 = load i32, i32* @DMU_OT_NONE, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @dmu_object_alloc(i32* %45, i32 %46, i32 %47, i32 %48, i32 0, i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VDEV_TOP_ZAP_MS_UNFLUSHED_PHYS_TXGS, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @zap_add(i32* %51, i32 %54, i32 %55, i32 4, i32 1, i32* %11, i32* %56)
  %58 = call i32 @VERIFY0(i32 %57)
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @VERIFY0(i32 %60)
  br label %62

62:                                               ; preds = %59, %44
  %63 = load i32*, i32** %6, align 8
  %64 = call i32* @spa_meta_objset(i32* %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @dmu_write(i32* %64, i32 %65, i32 %66, i32 %67, %struct.TYPE_10__* %8, i32* %68)
  ret void
}

declare dso_local i32* @spa_meta_objset(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @metaslab_unflushed_txg(%struct.TYPE_11__*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dmu_object_alloc(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dmu_write(i32*, i32, i32, i32, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
