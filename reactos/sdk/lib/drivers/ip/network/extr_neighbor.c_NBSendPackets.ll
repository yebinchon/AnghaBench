; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBSendPackets.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_neighbor.c_NBSendPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }

@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@NB_HASHMASK = common dso_local global i32 0, align 4
@NeighborCache = common dso_local global %struct.TYPE_14__* null, align 8
@NEIGHBOR_PACKET = common dso_local global i32 0, align 4
@Next = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PacketEntry: %x, NdisPacket %x\0A\00", align 1
@NBCompleteSend = common dso_local global i32 0, align 4
@LAN_PROTO_IPv4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NBSendPackets(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NUD_INCOMPLETE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 16
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 4
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @NB_HASHMASK, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %45, %1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @NeighborCache, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = call i32* @ExInterlockedRemoveHeadList(i32* %37, i32* %42)
  store i32* %43, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %88

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @NEIGHBOR_PACKET, align 4
  %48 = load i32, i32* @Next, align 4
  %49 = call %struct.TYPE_11__* @CONTAINING_RECORD(i32* %46, i32 %47, i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %5, align 8
  %50 = load i32, i32* @MID_TRACE, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @TI_DbgPrint(i32 %50, i8* %56)
  %58 = load i32, i32* @NBCompleteSend, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_13__* @PC(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_13__* @PC(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LAN_PROTO_IPv4, align 4
  %87 = call i32 %74(i32 %79, i32 %82, i32 0, i32 %85, i32 %86)
  br label %35

88:                                               ; preds = %35
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @CONTAINING_RECORD(i32*, i32, i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @PC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
