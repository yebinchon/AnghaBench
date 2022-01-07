; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrFileFree.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrFileFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 (i32, i32, i32)*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 (i32, i32, i32)* }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@AddressFileListLock = common dso_local global i32 0, align 4
@DEBUG_ADDRFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Aborting receive requests on AddrFile at (0x%X).\0A\00", align 1
@DATAGRAM_RECEIVE_REQUEST = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@STATUS_CANCELLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Aborting send requests on address file at (0x%X).\0A\00", align 1
@DATAGRAM_SEND_REQUEST = common dso_local global i32 0, align 4
@DATAGRAM_SEND_TAG = common dso_local global i32 0, align 4
@ADDR_FILE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddrFileFree(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* @MID_TRACE, align 4
  %11 = call i32 @TI_DbgPrint(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i32 @TcpipAcquireSpinLock(i32* @AddressFileListLock, i32* %5)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  %22 = call i32 @RemoveEntryList(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @TcpipReleaseSpinLock(i32* @AddressFileListLock, i32 %23)
  %25 = load i32, i32* @DEBUG_ADDRFILE, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = bitcast %struct.TYPE_8__* %26 to i8*
  %28 = call i32 @TI_DbgPrint(i32 %25, i8* %27)
  br label %29

29:                                               ; preds = %36, %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = call i32 @ExInterlockedRemoveHeadList(i32* %31, i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @DATAGRAM_RECEIVE_REQUEST, align 4
  %39 = load i32, i32* @ListEntry, align 4
  %40 = call i8* @CONTAINING_RECORD(i32 %37, i32 %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STATUS_CANCELLED, align 4
  %49 = call i32 %44(i32 %47, i32 %48, i32 0)
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* @DEBUG_ADDRFILE, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = bitcast %struct.TYPE_8__* %52 to i8*
  %54 = call i32 @TI_DbgPrint(i32 %51, i8* %53)
  br label %55

55:                                               ; preds = %62, %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  %60 = call i32 @ExInterlockedRemoveHeadList(i32* %57, i32* %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DATAGRAM_SEND_REQUEST, align 4
  %65 = load i32, i32* @ListEntry, align 4
  %66 = call i8* @CONTAINING_RECORD(i32 %63, i32 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %7, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @STATUS_CANCELLED, align 4
  %75 = call i32 %70(i32 %73, i32 %74, i32 0)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = load i32, i32* @DATAGRAM_SEND_TAG, align 4
  %78 = call i32 @ExFreePoolWithTag(%struct.TYPE_8__* %76, i32 %77)
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %99 [
    i32 129, label %83
    i32 128, label %94
  ]

83:                                               ; preds = %79
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TCPFreePort(i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  br label %99

94:                                               ; preds = %79
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @UDPFreePort(i32 %97)
  br label %99

99:                                               ; preds = %79, %94, %93
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = call i32 @RemoveEntityByContext(%struct.TYPE_8__* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = load i32, i32* @ADDR_FILE_TAG, align 4
  %104 = call i32 @ExFreePoolWithTag(%struct.TYPE_8__* %102, i32 %103)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @ExInterlockedRemoveHeadList(i32*, i32*) #1

declare dso_local i8* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @TCPFreePort(i32) #1

declare dso_local i32 @UDPFreePort(i32) #1

declare dso_local i32 @RemoveEntityByContext(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
