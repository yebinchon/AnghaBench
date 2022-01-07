; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_stop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_CANCELED = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_initialize_stop(%struct.TYPE_9__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCL_CONFIG, align 4
  %11 = load i32, i32* @SCL_STATE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RW_WRITER, align 4
  %14 = call i32 @spa_config_held(i32 %9, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = call i32 @MUTEX_HELD(i32* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i32 @vdev_is_concrete(%struct.TYPE_9__* %29)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @VDEV_INITIALIZE_CANCELED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %59

41:                                               ; preds = %36, %3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @vdev_initialize_change_state(%struct.TYPE_9__* %42, i64 %43)
  %45 = load i32, i32* @B_TRUE, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = call i32 @vdev_initialize_stop_wait_impl(%struct.TYPE_9__* %51)
  br label %59

53:                                               ; preds = %41
  %54 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = call i32 @list_insert_tail(i32* %56, %struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %40, %53, %50
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(i32, i32, i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_9__*) #1

declare dso_local i32 @vdev_initialize_change_state(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @vdev_initialize_stop_wait_impl(%struct.TYPE_9__*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
