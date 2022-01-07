; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_icmp.c_ICMPSendDatagram.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_icmp.c_ICMPSendDatagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_30__ }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending Datagram(%x %x %x %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"RemoteAddressTa: %x\0A\00", align 1
@IP_ADDRESS_V4 = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"About to get route to destination\0A\00", align 1
@STATUS_NETWORK_UNREACHABLE = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"About to send datagram\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Leaving\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ICMPSendDatagram(%struct.TYPE_29__* %0, %struct.TYPE_26__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_30__, align 4
  %15 = alloca %struct.TYPE_30__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %13, align 8
  %24 = load i32, i32* @MID_TRACE, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @TI_DbgPrint(i32 %24, i8* %30)
  %32 = load i32, i32* @MID_TRACE, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %34 = bitcast %struct.TYPE_27__* %33 to i8*
  %35 = call i32 @TI_DbgPrint(i32 %32, i8* %34)
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %56 [
    i32 128, label %42
  ]

42:                                               ; preds = %5
  %43 = load i32, i32* @IP_ADDRESS_V4, align 4
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %58

56:                                               ; preds = %5
  %57 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %57, i32* %6, align 4
  br label %125

58:                                               ; preds = %42
  %59 = load i32, i32* @MID_TRACE, align 4
  %60 = call i32 @TI_DbgPrint(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %62 = call i32 @LockObject(%struct.TYPE_29__* %61, i32* %18)
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 0
  %65 = bitcast %struct.TYPE_30__* %15 to i8*
  %66 = bitcast %struct.TYPE_30__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  %67 = call i64 @AddrIsUnspecified(%struct.TYPE_30__* %15)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = call %struct.TYPE_28__* @RouteGetRouteToDestination(%struct.TYPE_30__* %14)
  store %struct.TYPE_28__* %70, %struct.TYPE_28__** %17, align 8
  %71 = icmp ne %struct.TYPE_28__* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @UnlockObject(%struct.TYPE_29__* %73, i32 %74)
  %76 = load i32, i32* @STATUS_NETWORK_UNREACHABLE, align 4
  store i32 %76, i32* %6, align 4
  br label %125

77:                                               ; preds = %69
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = bitcast %struct.TYPE_30__* %15 to i8*
  %83 = bitcast %struct.TYPE_30__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  br label %93

84:                                               ; preds = %58
  %85 = call %struct.TYPE_28__* @NBLocateNeighbor(%struct.TYPE_30__* %15, i32* null)
  store %struct.TYPE_28__* %85, %struct.TYPE_28__** %17, align 8
  %86 = icmp ne %struct.TYPE_28__* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @UnlockObject(%struct.TYPE_29__* %88, i32 %89)
  %91 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %91, i32* %6, align 4
  br label %125

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @PrepareICMPPacket(%struct.TYPE_29__* %94, %struct.TYPE_22__* %97, i32* %12, %struct.TYPE_30__* %14, i32 %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @UnlockObject(%struct.TYPE_29__* %101, i32 %102)
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @NT_SUCCESS(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %93
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %125

109:                                              ; preds = %93
  %110 = load i32, i32* @MID_TRACE, align 4
  %111 = call i32 @TI_DbgPrint(i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %113 = call i32 @IPSendDatagram(i32* %12, %struct.TYPE_28__* %112)
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %125

119:                                              ; preds = %109
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %11, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @MID_TRACE, align 4
  %123 = call i32 @TI_DbgPrint(i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %119, %117, %107, %87, %72, %56
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @LockObject(%struct.TYPE_29__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @AddrIsUnspecified(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_28__* @RouteGetRouteToDestination(%struct.TYPE_30__*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @NBLocateNeighbor(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @PrepareICMPPacket(%struct.TYPE_29__*, %struct.TYPE_22__*, i32*, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IPSendDatagram(i32*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
