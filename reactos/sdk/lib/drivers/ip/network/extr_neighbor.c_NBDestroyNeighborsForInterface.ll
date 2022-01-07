; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBDestroyNeighborsForInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBDestroyNeighborsForInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }

@DISPATCH_LEVEL = common dso_local global i32 0, align 4
@NB_HASHMASK = common dso_local global i64 0, align 8
@NeighborCache = common dso_local global %struct.TYPE_6__* null, align 8
@NDIS_STATUS_REQUEST_ABORTED = common dso_local global i32 0, align 4
@NCE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBDestroyNeighborsForInterface(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @DISPATCH_LEVEL, align 4
  %9 = call i32 @KeRaiseIrql(i32 %8, i32* %4)
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %55, %1
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @NB_HASHMASK, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NeighborCache, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @TcpipAcquireSpinLockAtDpcLevel(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NeighborCache, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.TYPE_5__** %23, %struct.TYPE_5__*** %5, align 8
  br label %24

24:                                               ; preds = %48, %34, %14
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load i32, i32* @NDIS_STATUS_REQUEST_ABORTED, align 4
  %41 = call i32 @NBFlushPacketQueue(%struct.TYPE_5__* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = load i32, i32* @NCE_TAG, align 4
  %44 = call i32 @ExFreePoolWithTag(%struct.TYPE_5__* %42, i32 %43)
  br label %24

45:                                               ; preds = %28
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store %struct.TYPE_5__** %47, %struct.TYPE_5__*** %5, align 8
  br label %48

48:                                               ; preds = %45
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @NeighborCache, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @TcpipReleaseSpinLockFromDpcLevel(i32* %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %10

58:                                               ; preds = %10
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @KeLowerIrql(i32 %59)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @KeRaiseIrql(i32, i32*) #1

declare dso_local i32 @TcpipAcquireSpinLockAtDpcLevel(i32*) #1

declare dso_local i32 @NBFlushPacketQueue(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @TcpipReleaseSpinLockFromDpcLevel(i32*) #1

declare dso_local i32 @KeLowerIrql(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
