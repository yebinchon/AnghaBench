; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/udp/extr_udp.c_BuildUDPPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/udp/extr_udp.c_BuildUDPPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*)*, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Allocated packet: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Local Addr : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Remote Addr: %s\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"IPv6 UDP datagrams are not supported.\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Cannot add UDP header. Status = (0x%X)\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Displaying packet\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Leaving\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BuildUDPPacket(i32 %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_15__* %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  %19 = load i32, i32* @MAX_TRACE, align 4
  %20 = call i32 @TI_DbgPrint(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %22 = call i32 @IPInitializePacket(%struct.TYPE_14__* %21, i32 129)
  %23 = load i64, i64* %17, align 8
  %24 = add i64 8, %23
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @AllocatePacketWithBuffer(i32* %28, i32* null, i64 %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %41 = call i32 %39(%struct.TYPE_14__* %40)
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %9, align 4
  br label %105

43:                                               ; preds = %8
  %44 = load i32, i32* @MID_TRACE, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @TI_DbgPrint(i32 %44, i8* %49)
  %51 = load i32, i32* @MID_TRACE, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %53 = call i32 @A2S(%struct.TYPE_15__* %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @TI_DbgPrint(i32 %51, i8* %55)
  %57 = load i32, i32* @MID_TRACE, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = call i32 @A2S(%struct.TYPE_15__* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @TI_DbgPrint(i32 %57, i8* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %79 [
    i32 129, label %66
    i32 128, label %76
  ]

66:                                               ; preds = %43
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @AddUDPHeaderIPv4(i32 %67, %struct.TYPE_15__* %68, i32 %69, %struct.TYPE_15__* %70, i32 %71, %struct.TYPE_14__* %72, i32 %73, i64 %74)
  store i32 %75, i32* %18, align 4
  br label %81

76:                                               ; preds = %43
  %77 = load i32, i32* @MIN_TRACE, align 4
  %78 = call i32 @TI_DbgPrint(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %43, %76
  %80 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %79, %66
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @NT_SUCCESS(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @MIN_TRACE, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @TI_DbgPrint(i32 %86, i8* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = call i32 %93(%struct.TYPE_14__* %94)
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %9, align 4
  br label %105

97:                                               ; preds = %81
  %98 = load i32, i32* @MID_TRACE, align 4
  %99 = call i32 @TI_DbgPrint(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = call i32 @DISPLAY_IP_PACKET(%struct.TYPE_14__* %100)
  %102 = load i32, i32* @MID_TRACE, align 4
  %103 = call i32 @TI_DbgPrint(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %97, %85, %36
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @IPInitializePacket(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AllocatePacketWithBuffer(i32*, i32*, i64) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @A2S(%struct.TYPE_15__*) #1

declare dso_local i32 @AddUDPHeaderIPv4(i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @DISPLAY_IP_PACKET(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
