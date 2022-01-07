; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_io_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i64, i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8*, i32 }

@vdev_queue_agg_io_done = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_queue_io_done(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %11 = call i32 @mutex_enter(i32* %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = call i32 @vdev_queue_pending_remove(%struct.TYPE_14__* %12, %struct.TYPE_13__* %13)
  %15 = call i8* (...) @gethrtime()
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %15 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = call i8* (...) @gethrtime()
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %30 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %61, %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = call %struct.TYPE_13__* @vdev_queue_io_to_issue(%struct.TYPE_14__* %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %4, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = call i32 @mutex_exit(i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @vdev_queue_agg_io_done, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = call i32 @zio_nowait(%struct.TYPE_13__* %54)
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = call i32 @zio_vdev_io_reissue(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = call i32 @zio_execute(%struct.TYPE_13__* %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = call i32 @mutex_enter(i32* %63)
  br label %40

65:                                               ; preds = %40
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = call i32 @mutex_exit(i32* %67)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @vdev_queue_pending_remove(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i8* @gethrtime(...) #1

declare dso_local %struct.TYPE_13__* @vdev_queue_io_to_issue(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_13__*) #1

declare dso_local i32 @zio_vdev_io_reissue(%struct.TYPE_13__*) #1

declare dso_local i32 @zio_execute(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
