; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_kmod_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_kmod_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@zfsdev_state_lock = common dso_local global i32 0, align 4
@zfsdev_state_list = common dso_local global %struct.TYPE_4__* null, align 8
@zfs_fsyncer_key = common dso_local global i32 0, align 4
@rrw_tsd_key = common dso_local global i32 0, align 4
@zfs_allow_log_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_kmod_fini() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  %3 = call i32 (...) @zfsdev_detach()
  %4 = call i32 @mutex_destroy(i32* @zfsdev_state_lock)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zfsdev_state_list, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %1, align 8
  br label %6

6:                                                ; preds = %17, %0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = call i32 @kmem_free(%struct.TYPE_4__* %13, i32 8)
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  br label %17

17:                                               ; preds = %15
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %1, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = call i32 @kmem_free(%struct.TYPE_4__* %25, i32 8)
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i32 (...) @zfs_fini()
  %29 = call i32 (...) @spa_fini()
  %30 = call i32 (...) @zvol_fini()
  %31 = call i32 @tsd_destroy(i32* @zfs_fsyncer_key)
  %32 = call i32 @tsd_destroy(i32* @rrw_tsd_key)
  %33 = call i32 @tsd_destroy(i32* @zfs_allow_log_key)
  ret void
}

declare dso_local i32 @zfsdev_detach(...) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @zfs_fini(...) #1

declare dso_local i32 @spa_fini(...) #1

declare dso_local i32 @zvol_fini(...) #1

declare dso_local i32 @tsd_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
