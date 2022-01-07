; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_InitFunctionPtrs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_InitFunctionPtrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@hntdll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"LoadLibrary failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"RtlCompareMemory\00", align 1
@pRtlCompareMemory = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"RtlCompareMemoryUlong\00", align 1
@pRtlCompareMemoryUlong = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"RtlDeleteTimer\00", align 1
@pRtlDeleteTimer = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"RtlMoveMemory\00", align 1
@pRtlMoveMemory = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"RtlFillMemory\00", align 1
@pRtlFillMemory = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"RtlFillMemoryUlong\00", align 1
@pRtlFillMemoryUlong = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"RtlZeroMemory\00", align 1
@pRtlZeroMemory = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"RtlUlonglongByteSwap\00", align 1
@pRtlUlonglongByteSwap = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"RtlUniform\00", align 1
@pRtlUniform = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"RtlRandom\00", align 1
@pRtlRandom = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"RtlAreAllAccessesGranted\00", align 1
@pRtlAreAllAccessesGranted = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"RtlAreAnyAccessesGranted\00", align 1
@pRtlAreAnyAccessesGranted = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"RtlComputeCrc32\00", align 1
@pRtlComputeCrc32 = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"RtlInitializeHandleTable\00", align 1
@pRtlInitializeHandleTable = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"RtlIsValidIndexHandle\00", align 1
@pRtlIsValidIndexHandle = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"RtlDestroyHandleTable\00", align 1
@pRtlDestroyHandleTable = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"RtlAllocateHandle\00", align 1
@pRtlAllocateHandle = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c"RtlFreeHandle\00", align 1
@pRtlFreeHandle = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [28 x i8] c"RtlAllocateAndInitializeSid\00", align 1
@pRtlAllocateAndInitializeSid = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"RtlFreeSid\00", align 1
@pRtlFreeSid = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"RtlGetThreadErrorMode\00", align 1
@pRtlGetThreadErrorMode = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"RtlSetThreadErrorMode\00", align 1
@pRtlSetThreadErrorMode = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [26 x i8] c"LdrProcessRelocationBlock\00", align 1
@pLdrProcessRelocationBlock = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [24 x i8] c"RtlIpv4AddressToStringA\00", align 1
@pRtlIpv4AddressToStringA = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [26 x i8] c"RtlIpv4AddressToStringExA\00", align 1
@pRtlIpv4AddressToStringExA = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [24 x i8] c"RtlIpv4StringToAddressA\00", align 1
@pRtlIpv4StringToAddressA = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [26 x i8] c"RtlIpv4StringToAddressExA\00", align 1
@pRtlIpv4StringToAddressExA = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [24 x i8] c"RtlIpv6AddressToStringA\00", align 1
@pRtlIpv6AddressToStringA = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [26 x i8] c"RtlIpv6AddressToStringExA\00", align 1
@pRtlIpv6AddressToStringExA = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [24 x i8] c"RtlIpv6StringToAddressA\00", align 1
@pRtlIpv6StringToAddressA = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [24 x i8] c"RtlIpv6StringToAddressW\00", align 1
@pRtlIpv6StringToAddressW = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [26 x i8] c"RtlIpv6StringToAddressExA\00", align 1
@pRtlIpv6StringToAddressExA = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [26 x i8] c"RtlIpv6StringToAddressExW\00", align 1
@pRtlIpv6StringToAddressExW = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [13 x i8] c"LdrAddRefDll\00", align 1
@pLdrAddRefDll = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [18 x i8] c"LdrLockLoaderLock\00", align 1
@pLdrLockLoaderLock = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [20 x i8] c"LdrUnlockLoaderLock\00", align 1
@pLdrUnlockLoaderLock = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [23 x i8] c"RtlMultiByteToUnicodeN\00", align 1
@pRtlMultiByteToUnicodeN = common dso_local global i8* null, align 8
@.str.39 = private unnamed_addr constant [31 x i8] c"RtlGetCompressionWorkSpaceSize\00", align 1
@pRtlGetCompressionWorkSpaceSize = common dso_local global i8* null, align 8
@.str.40 = private unnamed_addr constant [20 x i8] c"RtlDecompressBuffer\00", align 1
@pRtlDecompressBuffer = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [22 x i8] c"RtlDecompressFragment\00", align 1
@pRtlDecompressFragment = common dso_local global i8* null, align 8
@.str.42 = private unnamed_addr constant [18 x i8] c"RtlCompressBuffer\00", align 1
@pRtlCompressBuffer = common dso_local global i8* null, align 8
@.str.43 = private unnamed_addr constant [27 x i8] c"RtlIsCriticalSectionLocked\00", align 1
@pRtlIsCriticalSectionLocked = common dso_local global i8* null, align 8
@.str.44 = private unnamed_addr constant [35 x i8] c"RtlIsCriticalSectionLockedByThread\00", align 1
@pRtlIsCriticalSectionLockedByThread = common dso_local global i8* null, align 8
@.str.45 = private unnamed_addr constant [31 x i8] c"RtlInitializeCriticalSectionEx\00", align 1
@pRtlInitializeCriticalSectionEx = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [26 x i8] c"LdrEnumerateLoadedModules\00", align 1
@pLdrEnumerateLoadedModules = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [24 x i8] c"RtlQueryPackageIdentity\00", align 1
@pRtlQueryPackageIdentity = common dso_local global i8* null, align 8
@.str.48 = private unnamed_addr constant [22 x i8] c"RtlMakeSelfRelativeSD\00", align 1
@pRtlMakeSelfRelativeSD = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [28 x i8] c"RtlAbsoluteToSelfRelativeSD\00", align 1
@pRtlAbsoluteToSelfRelativeSD = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [27 x i8] c"LdrRegisterDllNotification\00", align 1
@pLdrRegisterDllNotification = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [29 x i8] c"LdrUnregisterDllNotification\00", align 1
@pLdrUnregisterDllNotification = common dso_local global i8* null, align 8
@.str.52 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@hkernel32 = common dso_local global i64 0, align 8
@.str.53 = private unnamed_addr constant [15 x i8] c"IsWow64Process\00", align 1
@pIsWow64Process = common dso_local global i8* null, align 8
@src_aligned_block = common dso_local global i64 0, align 8
@src_src = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [31 x i8] c"Source must be 16 bytes long!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitFunctionPtrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFunctionPtrs() #0 {
  %1 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %1, i64* @hntdll, align 8
  %2 = load i64, i64* @hntdll, align 8
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i64, i64* @hntdll, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %159

8:                                                ; preds = %0
  %9 = load i64, i64* @hntdll, align 8
  %10 = call i64 @GetProcAddress(i64 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pRtlCompareMemory, align 8
  %12 = load i64, i64* @hntdll, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pRtlCompareMemoryUlong, align 8
  %15 = load i64, i64* @hntdll, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pRtlDeleteTimer, align 8
  %18 = load i64, i64* @hntdll, align 8
  %19 = call i64 @GetProcAddress(i64 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pRtlMoveMemory, align 8
  %21 = load i64, i64* @hntdll, align 8
  %22 = call i64 @GetProcAddress(i64 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @pRtlFillMemory, align 8
  %24 = load i64, i64* @hntdll, align 8
  %25 = call i64 @GetProcAddress(i64 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @pRtlFillMemoryUlong, align 8
  %27 = load i64, i64* @hntdll, align 8
  %28 = call i64 @GetProcAddress(i64 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @pRtlZeroMemory, align 8
  %30 = load i64, i64* @hntdll, align 8
  %31 = call i64 @GetProcAddress(i64 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @pRtlUlonglongByteSwap, align 8
  %33 = load i64, i64* @hntdll, align 8
  %34 = call i64 @GetProcAddress(i64 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @pRtlUniform, align 8
  %36 = load i64, i64* @hntdll, align 8
  %37 = call i64 @GetProcAddress(i64 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @pRtlRandom, align 8
  %39 = load i64, i64* @hntdll, align 8
  %40 = call i64 @GetProcAddress(i64 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** @pRtlAreAllAccessesGranted, align 8
  %42 = load i64, i64* @hntdll, align 8
  %43 = call i64 @GetProcAddress(i64 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** @pRtlAreAnyAccessesGranted, align 8
  %45 = load i64, i64* @hntdll, align 8
  %46 = call i64 @GetProcAddress(i64 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** @pRtlComputeCrc32, align 8
  %48 = load i64, i64* @hntdll, align 8
  %49 = call i64 @GetProcAddress(i64 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @pRtlInitializeHandleTable, align 8
  %51 = load i64, i64* @hntdll, align 8
  %52 = call i64 @GetProcAddress(i64 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @pRtlIsValidIndexHandle, align 8
  %54 = load i64, i64* @hntdll, align 8
  %55 = call i64 @GetProcAddress(i64 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** @pRtlDestroyHandleTable, align 8
  %57 = load i64, i64* @hntdll, align 8
  %58 = call i64 @GetProcAddress(i64 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** @pRtlAllocateHandle, align 8
  %60 = load i64, i64* @hntdll, align 8
  %61 = call i64 @GetProcAddress(i64 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** @pRtlFreeHandle, align 8
  %63 = load i64, i64* @hntdll, align 8
  %64 = call i64 @GetProcAddress(i64 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** @pRtlAllocateAndInitializeSid, align 8
  %66 = load i64, i64* @hntdll, align 8
  %67 = call i64 @GetProcAddress(i64 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** @pRtlFreeSid, align 8
  %69 = load i64, i64* @hntdll, align 8
  %70 = call i64 @GetProcAddress(i64 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** @pRtlGetThreadErrorMode, align 8
  %72 = load i64, i64* @hntdll, align 8
  %73 = call i64 @GetProcAddress(i64 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** @pRtlSetThreadErrorMode, align 8
  %75 = load i64, i64* @hntdll, align 8
  %76 = call i64 @GetProcAddress(i64 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** @pLdrProcessRelocationBlock, align 8
  %78 = load i64, i64* @hntdll, align 8
  %79 = call i64 @GetProcAddress(i64 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** @pRtlIpv4AddressToStringA, align 8
  %81 = load i64, i64* @hntdll, align 8
  %82 = call i64 @GetProcAddress(i64 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** @pRtlIpv4AddressToStringExA, align 8
  %84 = load i64, i64* @hntdll, align 8
  %85 = call i64 @GetProcAddress(i64 %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0))
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** @pRtlIpv4StringToAddressA, align 8
  %87 = load i64, i64* @hntdll, align 8
  %88 = call i64 @GetProcAddress(i64 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0))
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** @pRtlIpv4StringToAddressExA, align 8
  %90 = load i64, i64* @hntdll, align 8
  %91 = call i64 @GetProcAddress(i64 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** @pRtlIpv6AddressToStringA, align 8
  %93 = load i64, i64* @hntdll, align 8
  %94 = call i64 @GetProcAddress(i64 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** @pRtlIpv6AddressToStringExA, align 8
  %96 = load i64, i64* @hntdll, align 8
  %97 = call i64 @GetProcAddress(i64 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** @pRtlIpv6StringToAddressA, align 8
  %99 = load i64, i64* @hntdll, align 8
  %100 = call i64 @GetProcAddress(i64 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** @pRtlIpv6StringToAddressW, align 8
  %102 = load i64, i64* @hntdll, align 8
  %103 = call i64 @GetProcAddress(i64 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** @pRtlIpv6StringToAddressExA, align 8
  %105 = load i64, i64* @hntdll, align 8
  %106 = call i64 @GetProcAddress(i64 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0))
  %107 = inttoptr i64 %106 to i8*
  store i8* %107, i8** @pRtlIpv6StringToAddressExW, align 8
  %108 = load i64, i64* @hntdll, align 8
  %109 = call i64 @GetProcAddress(i64 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %110 = inttoptr i64 %109 to i8*
  store i8* %110, i8** @pLdrAddRefDll, align 8
  %111 = load i64, i64* @hntdll, align 8
  %112 = call i64 @GetProcAddress(i64 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  %113 = inttoptr i64 %112 to i8*
  store i8* %113, i8** @pLdrLockLoaderLock, align 8
  %114 = load i64, i64* @hntdll, align 8
  %115 = call i64 @GetProcAddress(i64 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0))
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** @pLdrUnlockLoaderLock, align 8
  %117 = load i64, i64* @hntdll, align 8
  %118 = call i64 @GetProcAddress(i64 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0))
  %119 = inttoptr i64 %118 to i8*
  store i8* %119, i8** @pRtlMultiByteToUnicodeN, align 8
  %120 = load i64, i64* @hntdll, align 8
  %121 = call i64 @GetProcAddress(i64 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0))
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** @pRtlGetCompressionWorkSpaceSize, align 8
  %123 = load i64, i64* @hntdll, align 8
  %124 = call i64 @GetProcAddress(i64 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** @pRtlDecompressBuffer, align 8
  %126 = load i64, i64* @hntdll, align 8
  %127 = call i64 @GetProcAddress(i64 %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** @pRtlDecompressFragment, align 8
  %129 = load i64, i64* @hntdll, align 8
  %130 = call i64 @GetProcAddress(i64 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  %131 = inttoptr i64 %130 to i8*
  store i8* %131, i8** @pRtlCompressBuffer, align 8
  %132 = load i64, i64* @hntdll, align 8
  %133 = call i64 @GetProcAddress(i64 %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0))
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** @pRtlIsCriticalSectionLocked, align 8
  %135 = load i64, i64* @hntdll, align 8
  %136 = call i64 @GetProcAddress(i64 %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0))
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** @pRtlIsCriticalSectionLockedByThread, align 8
  %138 = load i64, i64* @hntdll, align 8
  %139 = call i64 @GetProcAddress(i64 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0))
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** @pRtlInitializeCriticalSectionEx, align 8
  %141 = load i64, i64* @hntdll, align 8
  %142 = call i64 @GetProcAddress(i64 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0))
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** @pLdrEnumerateLoadedModules, align 8
  %144 = load i64, i64* @hntdll, align 8
  %145 = call i64 @GetProcAddress(i64 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0))
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** @pRtlQueryPackageIdentity, align 8
  %147 = load i64, i64* @hntdll, align 8
  %148 = call i64 @GetProcAddress(i64 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0))
  %149 = inttoptr i64 %148 to i8*
  store i8* %149, i8** @pRtlMakeSelfRelativeSD, align 8
  %150 = load i64, i64* @hntdll, align 8
  %151 = call i64 @GetProcAddress(i64 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i64 0, i64 0))
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** @pRtlAbsoluteToSelfRelativeSD, align 8
  %153 = load i64, i64* @hntdll, align 8
  %154 = call i64 @GetProcAddress(i64 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0))
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** @pLdrRegisterDllNotification, align 8
  %156 = load i64, i64* @hntdll, align 8
  %157 = call i64 @GetProcAddress(i64 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0))
  %158 = inttoptr i64 %157 to i8*
  store i8* %158, i8** @pLdrUnregisterDllNotification, align 8
  br label %159

159:                                              ; preds = %8, %0
  %160 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0))
  store i64 %160, i64* @hkernel32, align 8
  %161 = load i64, i64* @hkernel32, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i64, i64* @hkernel32, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i64, i64* @hkernel32, align 8
  %169 = call i64 @GetProcAddress(i64 %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0))
  %170 = inttoptr i64 %169 to i8*
  store i8* %170, i8** @pIsWow64Process, align 8
  br label %171

171:                                              ; preds = %167, %159
  %172 = load i64, i64* @src_aligned_block, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = load i32, i32* @src_src, align 4
  %175 = call i32 @strcpy(i8* %173, i32 %174)
  %176 = load i32, i32* @src, align 4
  %177 = call i32 @strlen(i32 %176)
  %178 = icmp eq i32 %177, 15
  %179 = zext i1 %178 to i32
  %180 = call i32 @ok(i32 %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0))
  ret void
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
