; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_async_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_async_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@DD_FIELD_LIVELIST = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_DELETED_CLONES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DMU_OTN_ZAP_METADATA = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"zfs: error %d was returned while looking up DMU_POOL_DELETED_CLONES in the zap\00", align 1
@DD_USED_HEAD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*)* @dsl_async_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_async_clone_destroy(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_14__* @dmu_tx_pool(i32* %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %12, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_14__* @dmu_tx_pool(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %14, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i32 @dmu_objset_from_ds(%struct.TYPE_16__* %28, i32** %10)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %32 = call i32 @dsl_clone_destroy_assert(%struct.TYPE_15__* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @dmu_objset_zil(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @zil_destroy_sync(i32 %34, i32* %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DD_FIELD_LIVELIST, align 4
  %42 = call i32 @zap_lookup(i32* %37, i32 %40, i32 %41, i32 4, i32 1, i32* %6)
  %43 = call i32 @VERIFY0(i32 %42)
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %46 = load i32, i32* @DMU_POOL_DELETED_CLONES, align 4
  %47 = call i32 @zap_lookup(i32* %44, i32 %45, i32 %46, i32 4, i32 1, i32* %5)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %2
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @DMU_OTN_ZAP_METADATA, align 4
  %54 = load i32, i32* @DMU_OT_NONE, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zap_create(i32* %52, i32 %53, i32 %54, i32 0, i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %59 = load i32, i32* @DMU_POOL_DELETED_CLONES, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @zap_add(i32* %57, i32 %58, i32 %59, i32 4, i32 1, i32* %5, i32* %60)
  %62 = call i32 @VERIFY0(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %72

66:                                               ; preds = %2
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %112

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @zap_add_int(i32* %73, i32 %74, i32 %75, i32* %76)
  %78 = call i32 @VERIFY0(i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = call i32 @dsl_deadlist_space(i32* %80, i32* %7, i32* %8, i32* %9)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %83 = load i32, i32* @DD_USED_HEAD, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 0, %86
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %89 = call %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_15__* %88)
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 0, %91
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @dsl_dir_diduse_space(%struct.TYPE_15__* %82, i32 %83, i32 %85, i32 %87, i32 %92, i32* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* @DD_USED_HEAD, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @dsl_dir_diduse_space(%struct.TYPE_15__* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32* %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* @B_FALSE, align 4
  %107 = call i32 @dsl_dir_remove_livelist(%struct.TYPE_15__* %104, i32* %105, i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @zthr_wakeup(i32 %110)
  br label %112

112:                                              ; preds = %72, %69
  ret void
}

declare dso_local %struct.TYPE_14__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_16__*, i32**) #1

declare dso_local i32 @dsl_clone_destroy_assert(%struct.TYPE_15__*) #1

declare dso_local i32 @zil_destroy_sync(i32, i32*) #1

declare dso_local i32 @dmu_objset_zil(i32*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zap_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @zfs_panic_recover(i8*) #1

declare dso_local i32 @zap_add_int(i32*, i32, i32, i32*) #1

declare dso_local i32 @dsl_deadlist_space(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dsl_dir_diduse_space(%struct.TYPE_15__*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @dsl_dir_phys(%struct.TYPE_15__*) #1

declare dso_local i32 @dsl_dir_remove_livelist(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @zthr_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
