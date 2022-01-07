; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBRemoveNeighbor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBRemoveNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DEBUG_NCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Called. NCE (0x%X).\0A\00", align 1
@NB_HASHMASK = common dso_local global i32 0, align 4
@NeighborCache = common dso_local global %struct.TYPE_9__* null, align 8
@NDIS_STATUS_REQUEST_ABORTED = common dso_local global i32 0, align 4
@NCE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBRemoveNeighbor(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = load i32, i32* @DEBUG_NCACHE, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = bitcast %struct.TYPE_8__* %9 to i8*
  %11 = call i32 @TI_DbgPrint(i32 %8, i8* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 16
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 4
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @NB_HASHMASK, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @TcpipAcquireSpinLock(i32* %35, i32* %7)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store %struct.TYPE_8__** %41, %struct.TYPE_8__*** %4, align 8
  br label %42

42:                                               ; preds = %62, %1
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %5, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = icmp eq %struct.TYPE_8__* %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32, i32* @NDIS_STATUS_REQUEST_ABORTED, align 4
  %57 = call i32 @NBFlushPacketQueue(%struct.TYPE_8__* %55, i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = load i32, i32* @NCE_TAG, align 4
  %60 = call i32 @ExFreePoolWithTag(%struct.TYPE_8__* %58, i32 %59)
  br label %65

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store %struct.TYPE_8__** %64, %struct.TYPE_8__*** %4, align 8
  br label %42

65:                                               ; preds = %50, %42
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NeighborCache, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @TcpipReleaseSpinLock(i32* %70, i32 %71)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @NBFlushPacketQueue(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
