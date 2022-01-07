; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_receive.c_FreeIPDR.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_receive.c_FreeIPDR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

@DEBUG_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Freeing IP datagram reassembly descriptor (0x%X).\0A\00", align 1
@IPDATAGRAM_HOLE = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Freeing hole descriptor at (0x%X).\0A\00", align 1
@IPHoleList = common dso_local global i32 0, align 4
@IP_FRAGMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Freeing fragment packet at (0x%X).\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Freeing fragment at (0x%X).\0A\00", align 1
@IPFragmentList = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Freeing IPDR header at (0x%X).\0A\00", align 1
@PACKET_BUFFER_TAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Freeing IPDR data at (0x%X).\0A\00", align 1
@IPDRList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeIPDR(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load i32, i32* @DEBUG_IP, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = bitcast %struct.TYPE_11__* %9 to i8*
  %11 = call i32 @TI_DbgPrint(i32 %8, i8* %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  br label %16

16:                                               ; preds = %21, %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = icmp ne %struct.TYPE_10__* %17, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* @IPDATAGRAM_HOLE, align 4
  %27 = load i32, i32* @ListEntry, align 4
  %28 = call %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_10__* %25, i32 %26, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @RemoveEntryList(%struct.TYPE_10__* %29)
  %31 = load i32, i32* @DEBUG_IP, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = bitcast %struct.TYPE_11__* %32 to i8*
  %34 = call i32 @TI_DbgPrint(i32 %31, i8* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = call i32 @ExFreeToNPagedLookasideList(i32* @IPHoleList, %struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %4, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %4, align 8
  br label %43

43:                                               ; preds = %78, %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = icmp ne %struct.TYPE_10__* %44, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32, i32* @IP_FRAGMENT, align 4
  %54 = load i32, i32* @ListEntry, align 4
  %55 = call %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_10__* %52, i32 %53, i32 %54)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = call i32 @RemoveEntryList(%struct.TYPE_10__* %56)
  %58 = load i32, i32* @DEBUG_IP, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @TI_DbgPrint(i32 %58, i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %48
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = call i32 @NdisReturnPackets(i32* %71, i32 1)
  br label %78

73:                                               ; preds = %48
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @FreeNdisPacket(i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* @DEBUG_IP, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = bitcast %struct.TYPE_11__* %80 to i8*
  %82 = call i32 @TI_DbgPrint(i32 %79, i8* %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %84 = call i32 @ExFreeToNPagedLookasideList(i32* @IPFragmentList, %struct.TYPE_11__* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %4, align 8
  br label %43

86:                                               ; preds = %43
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* @DEBUG_IP, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 @TI_DbgPrint(i32 %92, i8* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @PACKET_BUFFER_TAG, align 4
  %102 = call i32 @ExFreePoolWithTag(i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %86
  %104 = load i32, i32* @DEBUG_IP, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = bitcast %struct.TYPE_11__* %105 to i8*
  %107 = call i32 @TI_DbgPrint(i32 %104, i8* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = call i32 @ExFreeToNPagedLookasideList(i32* @IPDRList, %struct.TYPE_11__* %108)
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @CONTAINING_RECORD(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @RemoveEntryList(%struct.TYPE_10__*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @NdisReturnPackets(i32*, i32) #1

declare dso_local i32 @FreeNdisPacket(i32) #1

declare dso_local i32 @ExFreePoolWithTag(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
