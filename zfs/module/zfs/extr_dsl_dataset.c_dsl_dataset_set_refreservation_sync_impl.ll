; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_set_refreservation_sync_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_set_refreservation_sync_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ZFS_PROP_REFRESERVATION = common dso_local global i32 0, align 4
@DD_USED_REFRSRV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_set_refreservation_sync_impl(%struct.TYPE_9__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  %14 = call i32 @zfs_prop_to_name(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @dsl_prop_set_sync_impl(%struct.TYPE_9__* %12, i32 %14, i32 %15, i32 8, i32 1, i64* %7, i32* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  %20 = call i32 @zfs_prop_to_name(i32 %19)
  %21 = call i32 @dsl_prop_get_int_ds(%struct.TYPE_9__* %18, i32 %20, i64* %9)
  %22 = call i32 @VERIFY0(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @dmu_buf_will_dirty(i32 %25, i32* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 @mutex_enter(i32* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = call i32 @mutex_enter(i32* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_9__* %36)
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = call %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_9__* %39)
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i64 @MAX(i32 0, i64 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub nsw i64 %49, %50
  %52 = call i64 @MAX(i32 0, i64 %51)
  %53 = sub nsw i64 %46, %52
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = call i32 @mutex_exit(i32* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i32, i32* @DD_USED_REFRSRV, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @dsl_dir_diduse_space(%struct.TYPE_10__* %62, i32 %63, i64 %64, i32 0, i32 0, i32* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = call i32 @mutex_exit(i32* %70)
  ret void
}

declare dso_local i32 @dsl_prop_set_sync_impl(%struct.TYPE_9__*, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_prop_get_int_ds(%struct.TYPE_9__*, i32, i64*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DS_UNIQUE_IS_ACCURATE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(%struct.TYPE_9__*) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dsl_dir_diduse_space(%struct.TYPE_10__*, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
