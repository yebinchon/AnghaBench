; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_issue.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @scan_io_queue_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_io_queue_issue(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @B_FALSE, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_12__* @list_head(i32* %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i64 @scan_io_queue_check_suspend(%struct.TYPE_13__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @B_TRUE, align 4
  store i32 %23, i32* %8, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32 @sio2bp(%struct.TYPE_12__* %25, i32* %9)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = call i64 @SIO_GET_ASIZE(%struct.TYPE_12__* %27)
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = call i32 @scan_exec_io(i32 %35, i32* %9, i32 %38, i32* %40, %struct.TYPE_14__* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @list_remove_head(i32* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = call i32 @scan_io_queues_update_zio_stats(%struct.TYPE_14__* %45, i32* %9)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @sio_free(%struct.TYPE_12__* %47)
  br label %14

49:                                               ; preds = %22, %14
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @atomic_add_64(i32* %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_12__* @list_head(i32*) #1

declare dso_local i64 @scan_io_queue_check_suspend(%struct.TYPE_13__*) #1

declare dso_local i32 @sio2bp(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @SIO_GET_ASIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @scan_exec_io(i32, i32*, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @list_remove_head(i32*) #1

declare dso_local i32 @scan_io_queues_update_zio_stats(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @sio_free(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
