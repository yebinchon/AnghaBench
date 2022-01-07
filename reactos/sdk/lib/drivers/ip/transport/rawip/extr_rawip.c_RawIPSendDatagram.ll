; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/rawip/extr_rawip.c_RawIPSendDatagram.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/rawip/extr_rawip.c_RawIPSendDatagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_31__ }

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
define dso_local i32 @RawIPSendDatagram(%struct.TYPE_30__* %0, %struct.TYPE_27__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_31__, align 4
  %15 = alloca %struct.TYPE_31__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %24, %struct.TYPE_28__** %13, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = call i32 @LockObject(%struct.TYPE_30__* %25, i32* %19)
  %27 = load i32, i32* @MID_TRACE, align 4
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @TI_DbgPrint(i32 %27, i8* %33)
  %35 = load i32, i32* @MID_TRACE, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %37 = bitcast %struct.TYPE_28__* %36 to i8*
  %38 = call i32 @TI_DbgPrint(i32 %35, i8* %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %68 [
    i32 128, label %45
  ]

45:                                               ; preds = %5
  %46 = load i32, i32* @IP_ADDRESS_V4, align 4
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %16, align 4
  br label %73

68:                                               ; preds = %5
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @UnlockObject(%struct.TYPE_30__* %69, i32 %70)
  %72 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %72, i32* %6, align 4
  br label %139

73:                                               ; preds = %45
  %74 = load i32, i32* @MID_TRACE, align 4
  %75 = call i32 @TI_DbgPrint(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = bitcast %struct.TYPE_31__* %15 to i8*
  %79 = bitcast %struct.TYPE_31__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 8, i1 false)
  %80 = call i64 @AddrIsUnspecified(%struct.TYPE_31__* %15)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = call %struct.TYPE_29__* @RouteGetRouteToDestination(%struct.TYPE_31__* %14)
  store %struct.TYPE_29__* %83, %struct.TYPE_29__** %18, align 8
  %84 = icmp ne %struct.TYPE_29__* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @UnlockObject(%struct.TYPE_30__* %86, i32 %87)
  %89 = load i32, i32* @STATUS_NETWORK_UNREACHABLE, align 4
  store i32 %89, i32* %6, align 4
  br label %139

90:                                               ; preds = %82
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = bitcast %struct.TYPE_31__* %15 to i8*
  %96 = bitcast %struct.TYPE_31__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 8, i1 false)
  br label %106

97:                                               ; preds = %73
  %98 = call %struct.TYPE_29__* @NBLocateNeighbor(%struct.TYPE_31__* %15, i32* null)
  store %struct.TYPE_29__* %98, %struct.TYPE_29__** %18, align 8
  %99 = icmp ne %struct.TYPE_29__* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %102 = load i32, i32* %19, align 4
  %103 = call i32 @UnlockObject(%struct.TYPE_30__* %101, i32 %102)
  %104 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %104, i32* %6, align 4
  br label %139

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %90
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @BuildRawIpPacket(%struct.TYPE_30__* %107, i32* %12, %struct.TYPE_31__* %14, i32 %108, %struct.TYPE_31__* %15, i32 %111, i32 %112, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %116 = load i32, i32* %19, align 4
  %117 = call i32 @UnlockObject(%struct.TYPE_30__* %115, i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @NT_SUCCESS(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %6, align 4
  br label %139

123:                                              ; preds = %106
  %124 = load i32, i32* @MID_TRACE, align 4
  %125 = call i32 @TI_DbgPrint(i32 %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %127 = call i32 @IPSendDatagram(i32* %12, %struct.TYPE_29__* %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @NT_SUCCESS(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %6, align 4
  br label %139

133:                                              ; preds = %123
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @MID_TRACE, align 4
  %137 = call i32 @TI_DbgPrint(i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %131, %121, %100, %85, %68
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @LockObject(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_30__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @AddrIsUnspecified(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @RouteGetRouteToDestination(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @NBLocateNeighbor(%struct.TYPE_31__*, i32*) #1

declare dso_local i32 @BuildRawIpPacket(%struct.TYPE_30__*, i32*, %struct.TYPE_31__*, i32, %struct.TYPE_31__*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @IPSendDatagram(i32*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
