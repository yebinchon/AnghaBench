; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetAddrTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetAddrTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@EntityListLock = common dso_local global i32 0, align 4
@EntityCount = common dso_local global i64 0, align 8
@EntityList = common dso_local global %struct.TYPE_12__* null, align 8
@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@IP_ADDRESS_TAG = common dso_local global i32 0, align 4
@TDI_NO_RESOURCES = common dso_local global i32 0, align 4
@ADE_UNICAST = common dso_local global i32 0, align 4
@ADE_ADDRMASK = common dso_local global i32 0, align 4
@ADE_BROADCAST = common dso_local global i32 0, align 4
@TDI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryGetAddrTable(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.TYPE_9__* %6 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %1, i64* %15, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @DEBUG_INFO, align 4
  %17 = call i32 @TI_DbgPrint(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @TcpipAcquireSpinLock(i32* @EntityListLock, i32* %9)
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %43, %4
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @EntityCount, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EntityList, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EntityList, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %46

42:                                               ; preds = %32, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  br label %19

46:                                               ; preds = %41, %19
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @EntityCount, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %51)
  %53 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %53, i32* %5, align 4
  br label %101

54:                                               ; preds = %46
  %55 = load i32, i32* @NonPagedPool, align 4
  %56 = load i32, i32* @IP_ADDRESS_TAG, align 4
  %57 = call %struct.TYPE_11__* @ExAllocatePoolWithTag(i32 %55, i32 4, i32 %56)
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %61)
  %63 = load i32, i32* @TDI_NO_RESOURCES, align 4
  store i32 %63, i32* %5, align 4
  br label %101

64:                                               ; preds = %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @EntityList, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %11, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %76 = load i32, i32* @ADE_UNICAST, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = call i32 @GetInterfaceIPv4Address(%struct.TYPE_10__* %75, i32 %76, i32* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %81 = load i32, i32* @ADE_ADDRMASK, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = call i32 @GetInterfaceIPv4Address(%struct.TYPE_10__* %80, i32 %81, i32* %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = load i32, i32* @ADE_BROADCAST, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = call i32 @GetInterfaceIPv4Address(%struct.TYPE_10__* %85, i32 %86, i32* %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @TcpipReleaseSpinLock(i32* @EntityListLock, i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = ptrtoint %struct.TYPE_11__* %92 to i32
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @InfoCopyOut(i32 %93, i32 4, i32 %94, i32 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %98 = load i32, i32* @IP_ADDRESS_TAG, align 4
  %99 = call i32 @ExFreePoolWithTag(%struct.TYPE_11__* %97, i32 %98)
  %100 = load i32, i32* @TDI_SUCCESS, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %64, %60, %50
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @GetInterfaceIPv4Address(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @InfoCopyOut(i32, i32, i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
