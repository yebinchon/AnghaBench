; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_arp.c_ARPTransmit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_arp.c_ARPTransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32, i32*, i32)*, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_14__ = type { i32 }

@DEBUG_ARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@ETYPE_IPv4 = common dso_local global i32 0, align 4
@ETYPE_IPv6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad Address Type %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ARP_OPCODE_REQUEST = common dso_local global i32 0, align 4
@ARPTransmitComplete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Sending ARP Packet\0A\00", align 1
@LAN_PROTO_ARP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ARPTransmit(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %11 = load i32, i32* @DEBUG_ARP, align 4
  %12 = call i32 @TI_DbgPrint(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %5, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* @ETYPE_IPv4, align 4
  store i32 %23, i32* %10, align 4
  store i32 4, i32* %9, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load i32, i32* @ETYPE_IPv6, align 4
  store i32 %25, i32* %10, align 4
  store i32 16, i32* %9, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load i32, i32* @DEBUG_ARP, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TI_DbgPrint(i32 %27, i8* %32)
  %34 = call i32 (...) @DbgBreakPoint()
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %24, %22
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = call i32 @WN2H(i32 1)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* @ARP_OPCODE_REQUEST, align 4
  %57 = call %struct.TYPE_14__* @PrepareARPPacket(%struct.TYPE_15__* %37, i32 %38, i32 %39, i32 %43, i32 %44, i32 %47, i32* %51, i32 %52, i32* %55, i32 %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %8, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %36
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %4, align 4
  br label %84

62:                                               ; preds = %36
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = call i32 @ASSERT_KM_POINTER(%struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = call %struct.TYPE_14__* @PC(%struct.TYPE_14__* %65)
  %67 = call i32 @ASSERT_KM_POINTER(%struct.TYPE_14__* %66)
  %68 = load i32, i32* @ARPTransmitComplete, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = call %struct.TYPE_14__* @PC(%struct.TYPE_14__* %69)
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @DEBUG_ARP, align 4
  %73 = call i32 @TI_DbgPrint(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32 (i32, %struct.TYPE_14__*, i32, i32*, i32)*, i32 (i32, %struct.TYPE_14__*, i32, i32*, i32)** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = load i32, i32* @LAN_PROTO_ARP, align 4
  %82 = call i32 %76(i32 %79, %struct.TYPE_14__* %80, i32 0, i32* null, i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %62, %60, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @DbgBreakPoint(...) #1

declare dso_local %struct.TYPE_14__* @PrepareARPPacket(%struct.TYPE_15__*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @WN2H(i32) #1

declare dso_local i32 @ASSERT_KM_POINTER(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @PC(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
