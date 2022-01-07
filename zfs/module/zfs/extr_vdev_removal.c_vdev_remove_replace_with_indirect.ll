; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_vdev_remove_replace_with_indirect.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_vdev_remove_replace_with_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32*, i32 }

@vdev_indirect_ops = common dso_local global i32 0, align 4
@vdev_remove_complete_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @vdev_remove_replace_with_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_remove_replace_with_indirect(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = call i32 (...) @fnvlist_alloc()
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vdev_remove_enlist_zaps(%struct.TYPE_12__* %18, i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call %struct.TYPE_12__* @vdev_add_parent(%struct.TYPE_12__* %23, i32* @vdev_indirect_ops)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i32 @vdev_remove_child(%struct.TYPE_12__* %29, %struct.TYPE_12__* %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i32 @vdev_compact_children(%struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = call i32 @list_link_active(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = call i32 @mutex_enter(i32* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = call i32 @cv_broadcast(i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = call i32 @mutex_exit(i32* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32* @dmu_tx_create_assigned(i32 %54, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @vdev_remove_complete_sync, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @dsl_sync_task_nowait(i32 %59, i32 %60, %struct.TYPE_13__* %61, i32 0, i32 %62, i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @dmu_tx_commit(i32* %65)
  ret void
}

declare dso_local i32 @fnvlist_alloc(...) #1

declare dso_local i32 @vdev_remove_enlist_zaps(%struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @vdev_add_parent(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @vdev_compact_children(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @list_link_active(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32* @dmu_tx_create_assigned(i32, i32) #1

declare dso_local i32 @dsl_sync_task_nowait(i32, i32, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
