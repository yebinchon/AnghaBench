; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_ignored_writes.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_ignored_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }

@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_IGNORED_WRITES = common dso_local global i64 0, align 8
@ZIO_VDEV_IO_STAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_handle_ignored_writes(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i32, i32* @RW_READER, align 4
  %5 = call i32 @rw_enter(i32* @inject_lock, i32 %4)
  %6 = call %struct.TYPE_10__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  br label %7

7:                                                ; preds = %62, %1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %65

10:                                               ; preds = %7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZINJECT_IGNORED_WRITES, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %10
  br label %62

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = call i64 (...) @ddi_get_lbolt64()
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  br label %50

43:                                               ; preds = %32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50, %26
  %52 = call i32 @spa_get_random(i32 100)
  %53 = icmp slt i32 %52, 60
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* @ZIO_VDEV_IO_STAGES, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %54, %51
  br label %65

62:                                               ; preds = %25
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = call %struct.TYPE_10__* @list_next(i32* @inject_handlers, %struct.TYPE_10__* %63)
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %3, align 8
  br label %7

65:                                               ; preds = %61, %7
  %66 = call i32 @rw_exit(i32* @inject_lock)
  ret void
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @list_head(i32*) #1

declare dso_local i64 @ddi_get_lbolt64(...) #1

declare dso_local i32 @spa_get_random(i32) #1

declare dso_local %struct.TYPE_10__* @list_next(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
