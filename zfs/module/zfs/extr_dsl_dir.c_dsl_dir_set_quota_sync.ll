; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_set_quota_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_set_quota_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_RECVD_PROPS = common dso_local global i64 0, align 8
@ZFS_PROP_QUOTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s=%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_dir_set_quota_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_set_quota_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.TYPE_13__* @dmu_tx_pool(i32* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FTAG, align 4
  %18 = call i32 @dsl_dataset_hold(%struct.TYPE_13__* %13, i32 %16, i32 %17, %struct.TYPE_15__** %7)
  %19 = call i32 @VERIFY0(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @spa_version(i32 %22)
  %24 = load i64, i64* @SPA_VERSION_RECVD_PROPS, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %29 = call i32 @zfs_prop_to_name(i32 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @dsl_prop_set_sync_impl(%struct.TYPE_15__* %27, i32 %29, i32 %32, i32 8, i32 1, i64* %34, i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %39 = call i32 @zfs_prop_to_name(i32 %38)
  %40 = call i32 @dsl_prop_get_int_ds(%struct.TYPE_15__* %37, i32 %39, i64* %8)
  %41 = call i32 @VERIFY0(i32 %40)
  br label %53

42:                                               ; preds = %2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %49 = call i32 @zfs_prop_to_name(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @spa_history_log_internal_ds(%struct.TYPE_15__* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %42, %26
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @dmu_buf_will_dirty(i32 %58, i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = call i32 @mutex_enter(i32* %64)
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = call %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_17__* %69)
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i64 %66, i64* %71, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = call i32 @mutex_exit(i32* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = load i32, i32* @FTAG, align 4
  %79 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %77, i32 %78)
  ret void
}

declare dso_local %struct.TYPE_13__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_13__*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dsl_prop_set_sync_impl(%struct.TYPE_15__*, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @dsl_prop_get_int_ds(%struct.TYPE_15__*, i32, i64*) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_15__*, i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_16__* @dsl_dir_phys(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
