; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_insert.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_scan_io_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*, i32, i32, i32*)* @scan_io_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_io_queue_insert(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @BP_GET_NDVAS(i32* %16)
  %18 = call %struct.TYPE_12__* @sio_alloc(i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %12, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @BP_IS_GANG(i32* %19)
  %21 = call i32 @ASSERT0(i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = call i32 @MUTEX_HELD(i32* %25)
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bp2sio(i32* %28, %struct.TYPE_12__* %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %42 = call i32 @SIO_GET_ASIZE(%struct.TYPE_12__* %41)
  %43 = call i32 @atomic_add_64(i32* %40, i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = call i32 @scan_io_queue_insert_impl(%struct.TYPE_14__* %44, %struct.TYPE_12__* %45)
  ret void
}

declare dso_local %struct.TYPE_12__* @sio_alloc(i32) #1

declare dso_local i32 @BP_GET_NDVAS(i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @BP_IS_GANG(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @bp2sio(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @SIO_GET_ASIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @scan_io_queue_insert_impl(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
