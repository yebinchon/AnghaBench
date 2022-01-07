; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utinit.c_AcpiUtInitGlobals.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utinit.c_AcpiUtInitGlobals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@UtInitGlobals = common dso_local global i32 0, align 4
@ACPI_ADDRESS_RANGE_MAX = common dso_local global i64 0, align 8
@AcpiGbl_AddressRangeList = common dso_local global i32** null, align 8
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@AcpiGbl_MutexInfo = common dso_local global %struct.TYPE_7__* null, align 8
@ACPI_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@ACPI_NUM_OWNERID_MASKS = common dso_local global i64 0, align 8
@AcpiGbl_OwnerIdMask = common dso_local global i32* null, align 8
@AcpiMethodCount = common dso_local global i64 0, align 8
@AcpiSciCount = common dso_local global i64 0, align 8
@AcpiGpeCount = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@AcpiFixedEventCount = common dso_local global i64* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AcpiGbl_AllGpesInitialized = common dso_local global i8* null, align 8
@AcpiGbl_GpeXruptListHead = common dso_local global i32* null, align 8
@AcpiGbl_GpeFadtBlocks = common dso_local global i32** null, align 8
@AcpiCurrentGpeCount = common dso_local global i64 0, align 8
@AcpiGbl_GlobalEventHandler = common dso_local global i32* null, align 8
@AcpiGbl_SciHandlerList = common dso_local global i32* null, align 8
@AcpiGbl_GlobalNotify = common dso_local global %struct.TYPE_8__* null, align 8
@AcpiGbl_ExceptionHandler = common dso_local global i32* null, align 8
@AcpiGbl_InitHandler = common dso_local global i32* null, align 8
@AcpiGbl_TableHandler = common dso_local global i32* null, align 8
@AcpiGbl_InterfaceHandler = common dso_local global i32* null, align 8
@AcpiGbl_GlobalLockSemaphore = common dso_local global i32* null, align 8
@AcpiGbl_GlobalLockMutex = common dso_local global i32* null, align 8
@AcpiGbl_GlobalLockAcquired = common dso_local global i8* null, align 8
@AcpiGbl_GlobalLockHandle = common dso_local global i64 0, align 8
@AcpiGbl_GlobalLockPresent = common dso_local global i8* null, align 8
@AcpiGbl_DSDT = common dso_local global i32* null, align 8
@AcpiGbl_CmSingleStep = common dso_local global i8* null, align 8
@AcpiGbl_Shutdown = common dso_local global i8* null, align 8
@AcpiGbl_NsLookupCount = common dso_local global i64 0, align 8
@AcpiGbl_PsFindCount = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@AcpiGbl_AcpiHardwarePresent = common dso_local global i8* null, align 8
@AcpiGbl_LastOwnerIdIndex = common dso_local global i64 0, align 8
@AcpiGbl_NextOwnerIdOffset = common dso_local global i64 0, align 8
@DEBUGGER_THREADING = common dso_local global i32 0, align 4
@AcpiGbl_DebuggerConfiguration = common dso_local global i32 0, align 4
@AcpiGbl_OsiMutex = common dso_local global i32* null, align 8
@AcpiGbl_EventsInitialized = common dso_local global i8* null, align 8
@AcpiGbl_SystemAwakeAndRunning = common dso_local global i8* null, align 8
@AcpiGbl_RootNode = common dso_local global i32* null, align 8
@ACPI_ROOT_NAME = common dso_local global i32 0, align 4
@AcpiGbl_RootNodeStruct = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SIZE = common dso_local global i32 0, align 4
@ACPI_SIZE_MAX = common dso_local global i32 0, align 4
@AcpiGbl_DisableMemTracking = common dso_local global i8* null, align 8
@AcpiGbl_DisplayFinalMemStats = common dso_local global i8* null, align 8
@AcpiGbl_ExternalList = common dso_local global i32* null, align 8
@AcpiGbl_LowestStackPointer = common dso_local global i32 0, align 4
@AcpiGbl_NumExternalMethods = common dso_local global i64 0, align 8
@AcpiGbl_ResolvedExternalMethods = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiUtInitGlobals() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @UtInitGlobals, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = call i32 (...) @AcpiUtCreateCaches()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @return_ACPI_STATUS(i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ACPI_ADDRESS_RANGE_MAX, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32**, i32*** @AcpiGbl_AddressRangeList, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %14

25:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @ACPI_NUM_MUTEX, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_MutexInfo, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @ACPI_MUTEX_NOT_ACQUIRED, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_MutexInfo, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_MutexInfo, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %3, align 8
  br label %26

47:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32*, i32** @AcpiGbl_OwnerIdMask, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %3, align 8
  br label %48

59:                                               ; preds = %48
  %60 = load i32*, i32** @AcpiGbl_OwnerIdMask, align 8
  %61 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 -2147483648, i32* %63, align 4
  store i64 0, i64* @AcpiMethodCount, align 8
  store i64 0, i64* @AcpiSciCount, align 8
  store i64 0, i64* @AcpiGpeCount, align 8
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %72, %59
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i64*, i64** @AcpiFixedEventCount, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %64

75:                                               ; preds = %64
  %76 = load i8*, i8** @FALSE, align 8
  store i8* %76, i8** @AcpiGbl_AllGpesInitialized, align 8
  store i32* null, i32** @AcpiGbl_GpeXruptListHead, align 8
  %77 = load i32**, i32*** @AcpiGbl_GpeFadtBlocks, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* null, i32** %78, align 8
  %79 = load i32**, i32*** @AcpiGbl_GpeFadtBlocks, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* null, i32** %80, align 8
  store i64 0, i64* @AcpiCurrentGpeCount, align 8
  store i32* null, i32** @AcpiGbl_GlobalEventHandler, align 8
  store i32* null, i32** @AcpiGbl_SciHandlerList, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AcpiGbl_GlobalNotify, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AcpiGbl_GlobalNotify, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32* null, i32** @AcpiGbl_ExceptionHandler, align 8
  store i32* null, i32** @AcpiGbl_InitHandler, align 8
  store i32* null, i32** @AcpiGbl_TableHandler, align 8
  store i32* null, i32** @AcpiGbl_InterfaceHandler, align 8
  store i32* null, i32** @AcpiGbl_GlobalLockSemaphore, align 8
  store i32* null, i32** @AcpiGbl_GlobalLockMutex, align 8
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** @AcpiGbl_GlobalLockAcquired, align 8
  store i64 0, i64* @AcpiGbl_GlobalLockHandle, align 8
  %88 = load i8*, i8** @FALSE, align 8
  store i8* %88, i8** @AcpiGbl_GlobalLockPresent, align 8
  store i32* null, i32** @AcpiGbl_DSDT, align 8
  %89 = load i8*, i8** @FALSE, align 8
  store i8* %89, i8** @AcpiGbl_CmSingleStep, align 8
  %90 = load i8*, i8** @FALSE, align 8
  store i8* %90, i8** @AcpiGbl_Shutdown, align 8
  store i64 0, i64* @AcpiGbl_NsLookupCount, align 8
  store i64 0, i64* @AcpiGbl_PsFindCount, align 8
  %91 = load i8*, i8** @TRUE, align 8
  store i8* %91, i8** @AcpiGbl_AcpiHardwarePresent, align 8
  store i64 0, i64* @AcpiGbl_LastOwnerIdIndex, align 8
  store i64 0, i64* @AcpiGbl_NextOwnerIdOffset, align 8
  %92 = load i32, i32* @DEBUGGER_THREADING, align 4
  store i32 %92, i32* @AcpiGbl_DebuggerConfiguration, align 4
  store i32* null, i32** @AcpiGbl_OsiMutex, align 8
  %93 = load i8*, i8** @FALSE, align 8
  store i8* %93, i8** @AcpiGbl_EventsInitialized, align 8
  %94 = load i8*, i8** @TRUE, align 8
  store i8* %94, i8** @AcpiGbl_SystemAwakeAndRunning, align 8
  store i32* null, i32** @AcpiGbl_RootNode, align 8
  %95 = load i32, i32* @ACPI_ROOT_NAME, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 6, i32 0), align 8
  %96 = load i32, i32* @ACPI_DESC_TYPE_NAMED, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 5), align 4
  %97 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @AcpiGbl_RootNodeStruct, i32 0, i32 0), align 8
  %98 = load i32, i32* @AE_OK, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  %100 = load i32, i32* %1, align 4
  ret i32 %100
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiUtCreateCaches(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
