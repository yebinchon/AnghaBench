; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBUpdateNeighbor.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBUpdateNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DEBUG_NCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Called. NCE (0x%X)  LinkAddress (0x%X)  State (0x%X).\0A\00", align 1
@NB_HASHMASK = common dso_local global i32 0, align 4
@NeighborCache = common dso_local global %struct.TYPE_8__* null, align 8
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@ARP_COMPLETE_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBUpdateNeighbor(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @DEBUG_NCACHE, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @TI_DbgPrint(i32 %10, i8* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 16
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 4
  %31 = load i32, i32* %9, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @NB_HASHMASK, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NeighborCache, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = call i32 @TcpipAcquireSpinLock(i32* %40, i32* %8)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @RtlCopyMemory(i32 %44, i32 %45, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NeighborCache, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @TcpipReleaseSpinLock(i32* %59, i32 %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @NUD_INCOMPLETE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %3
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i64, i64* @ARP_COMPLETE_TIMEOUT, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = call i32 @NBSendPackets(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %77, %3
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @NBSendPackets(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
