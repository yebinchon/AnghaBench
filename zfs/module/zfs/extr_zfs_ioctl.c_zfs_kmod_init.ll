; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_kmod_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_kmod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@zfsdev_state_lock = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@zfsdev_state_list = common dso_local global %struct.TYPE_3__* null, align 8
@zfs_fsyncer_key = common dso_local global i32 0, align 4
@rrw_tsd_key = common dso_local global i32 0, align 4
@rrw_tsd_destroy = common dso_local global i32* null, align 8
@zfs_allow_log_key = common dso_local global i32 0, align 4
@zfs_allow_log_destroy = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_kmod_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @zvol_init()
  store i32 %3, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %1, align 4
  br label %34

7:                                                ; preds = %0
  %8 = load i32, i32* @FREAD, align 4
  %9 = load i32, i32* @FWRITE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @spa_init(i32 %10)
  %12 = call i32 (...) @zfs_init()
  %13 = call i32 (...) @zfs_ioctl_init()
  %14 = load i32, i32* @MUTEX_DEFAULT, align 4
  %15 = call i32 @mutex_init(i32* @zfsdev_state_lock, i32* null, i32 %14, i32* null)
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call %struct.TYPE_3__* @kmem_zalloc(i32 4, i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** @zfsdev_state_list, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @zfsdev_state_list, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = call i32 (...) @zfsdev_attach()
  store i32 %20, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  br label %29

23:                                               ; preds = %7
  %24 = call i32 @tsd_create(i32* @zfs_fsyncer_key, i32* null)
  %25 = load i32*, i32** @rrw_tsd_destroy, align 8
  %26 = call i32 @tsd_create(i32* @rrw_tsd_key, i32* %25)
  %27 = load i32*, i32** @zfs_allow_log_destroy, align 8
  %28 = call i32 @tsd_create(i32* @zfs_allow_log_key, i32* %27)
  store i32 0, i32* %1, align 4
  br label %34

29:                                               ; preds = %22
  %30 = call i32 (...) @zfs_fini()
  %31 = call i32 (...) @spa_fini()
  %32 = call i32 (...) @zvol_fini()
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %29, %23, %5
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @zvol_init(...) #1

declare dso_local i32 @spa_init(i32) #1

declare dso_local i32 @zfs_init(...) #1

declare dso_local i32 @zfs_ioctl_init(...) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zfsdev_attach(...) #1

declare dso_local i32 @tsd_create(i32*, i32*) #1

declare dso_local i32 @zfs_fini(...) #1

declare dso_local i32 @spa_fini(...) #1

declare dso_local i32 @zvol_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
