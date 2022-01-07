; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_all_pools_for_each_vdev_run_vcdl.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_all_pools_for_each_vdev_run_vcdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@vdev_run_cmd_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @all_pools_for_each_vdev_run_vcdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @all_pools_for_each_vdev_run_vcdl(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %6 = call i32 @sysconf(i32 %5)
  %7 = mul nsw i32 5, %6
  %8 = call i32* @tpool_create(i32 1, i32 %7, i32 0, i32* null)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @vdev_run_cmd_thread, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @tpool_dispatch(i32* %20, i32 %21, i8* %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @tpool_wait(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @tpool_destroy(i32* %36)
  br label %38

38:                                               ; preds = %33, %11
  ret void
}

declare dso_local i32* @tpool_create(i32, i32, i32, i32*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @tpool_dispatch(i32*, i32, i8*) #1

declare dso_local i32 @tpool_wait(i32*) #1

declare dso_local i32 @tpool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
