; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_slm_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_mod.c_zfs_slm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@g_zfs_tid = common dso_local global i32 0, align 4
@g_tpool = common dso_local global i32* null, align 8
@g_pool_list = common dso_local global i32 0, align 4
@g_device_list = common dso_local global i32 0, align 4
@g_zfshdl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_slm_fini() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @g_zfs_tid, align 4
  %4 = call i32 @pthread_join(i32 %3, i32* null)
  %5 = load i32*, i32** @g_tpool, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32*, i32** @g_tpool, align 8
  %9 = call i32 @tpool_wait(i32* %8)
  %10 = load i32*, i32** @g_tpool, align 8
  %11 = call i32 @tpool_destroy(i32* %10)
  br label %12

12:                                               ; preds = %7, %0
  br label %13

13:                                               ; preds = %16, %12
  %14 = call %struct.TYPE_6__* @list_head(i32* @g_pool_list)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %1, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = call i32 @list_remove(i32* @g_pool_list, %struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @zpool_close(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = call i32 @free(%struct.TYPE_6__* %23)
  br label %13

25:                                               ; preds = %13
  %26 = call i32 @list_destroy(i32* @g_pool_list)
  br label %27

27:                                               ; preds = %30, %25
  %28 = call %struct.TYPE_6__* @list_head(i32* @g_device_list)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %2, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i32 @list_remove(i32* @g_device_list, %struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = call i32 @free(%struct.TYPE_6__* %33)
  br label %27

35:                                               ; preds = %27
  %36 = call i32 @list_destroy(i32* @g_device_list)
  %37 = load i32, i32* @g_zfshdl, align 4
  %38 = call i32 @libzfs_fini(i32 %37)
  ret void
}

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @tpool_wait(i32*) #1

declare dso_local i32 @tpool_destroy(i32*) #1

declare dso_local %struct.TYPE_6__* @list_head(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @zpool_close(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @list_destroy(i32*) #1

declare dso_local i32 @libzfs_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
