#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ hkernel32 ; 
 scalar_t__ hntdll ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* pIsWow64Process ; 
 void* pLdrAddRefDll ; 
 void* pLdrEnumerateLoadedModules ; 
 void* pLdrLockLoaderLock ; 
 void* pLdrProcessRelocationBlock ; 
 void* pLdrRegisterDllNotification ; 
 void* pLdrUnlockLoaderLock ; 
 void* pLdrUnregisterDllNotification ; 
 void* pRtlAbsoluteToSelfRelativeSD ; 
 void* pRtlAllocateAndInitializeSid ; 
 void* pRtlAllocateHandle ; 
 void* pRtlAreAllAccessesGranted ; 
 void* pRtlAreAnyAccessesGranted ; 
 void* pRtlCompareMemory ; 
 void* pRtlCompareMemoryUlong ; 
 void* pRtlCompressBuffer ; 
 void* pRtlComputeCrc32 ; 
 void* pRtlDecompressBuffer ; 
 void* pRtlDecompressFragment ; 
 void* pRtlDeleteTimer ; 
 void* pRtlDestroyHandleTable ; 
 void* pRtlFillMemory ; 
 void* pRtlFillMemoryUlong ; 
 void* pRtlFreeHandle ; 
 void* pRtlFreeSid ; 
 void* pRtlGetCompressionWorkSpaceSize ; 
 void* pRtlGetThreadErrorMode ; 
 void* pRtlInitializeCriticalSectionEx ; 
 void* pRtlInitializeHandleTable ; 
 void* pRtlIpv4AddressToStringA ; 
 void* pRtlIpv4AddressToStringExA ; 
 void* pRtlIpv4StringToAddressA ; 
 void* pRtlIpv4StringToAddressExA ; 
 void* pRtlIpv6AddressToStringA ; 
 void* pRtlIpv6AddressToStringExA ; 
 void* pRtlIpv6StringToAddressA ; 
 void* pRtlIpv6StringToAddressExA ; 
 void* pRtlIpv6StringToAddressExW ; 
 void* pRtlIpv6StringToAddressW ; 
 void* pRtlIsCriticalSectionLocked ; 
 void* pRtlIsCriticalSectionLockedByThread ; 
 void* pRtlIsValidIndexHandle ; 
 void* pRtlMakeSelfRelativeSD ; 
 void* pRtlMoveMemory ; 
 void* pRtlMultiByteToUnicodeN ; 
 void* pRtlQueryPackageIdentity ; 
 void* pRtlRandom ; 
 void* pRtlSetThreadErrorMode ; 
 void* pRtlUlonglongByteSwap ; 
 void* pRtlUniform ; 
 void* pRtlZeroMemory ; 
 int /*<<< orphan*/  src ; 
 scalar_t__ src_aligned_block ; 
 int /*<<< orphan*/  src_src ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    hntdll = FUNC1("ntdll.dll");
    FUNC2(hntdll != 0, "LoadLibrary failed\n");
    if (hntdll) {
	pRtlCompareMemory = (void *)FUNC0(hntdll, "RtlCompareMemory");
	pRtlCompareMemoryUlong = (void *)FUNC0(hntdll, "RtlCompareMemoryUlong");
        pRtlDeleteTimer = (void *)FUNC0(hntdll, "RtlDeleteTimer");
	pRtlMoveMemory = (void *)FUNC0(hntdll, "RtlMoveMemory");
	pRtlFillMemory = (void *)FUNC0(hntdll, "RtlFillMemory");
	pRtlFillMemoryUlong = (void *)FUNC0(hntdll, "RtlFillMemoryUlong");
	pRtlZeroMemory = (void *)FUNC0(hntdll, "RtlZeroMemory");
	pRtlUlonglongByteSwap = (void *)FUNC0(hntdll, "RtlUlonglongByteSwap");
	pRtlUniform = (void *)FUNC0(hntdll, "RtlUniform");
	pRtlRandom = (void *)FUNC0(hntdll, "RtlRandom");
	pRtlAreAllAccessesGranted = (void *)FUNC0(hntdll, "RtlAreAllAccessesGranted");
	pRtlAreAnyAccessesGranted = (void *)FUNC0(hntdll, "RtlAreAnyAccessesGranted");
	pRtlComputeCrc32 = (void *)FUNC0(hntdll, "RtlComputeCrc32");
	pRtlInitializeHandleTable = (void *)FUNC0(hntdll, "RtlInitializeHandleTable");
	pRtlIsValidIndexHandle = (void *)FUNC0(hntdll, "RtlIsValidIndexHandle");
	pRtlDestroyHandleTable = (void *)FUNC0(hntdll, "RtlDestroyHandleTable");
	pRtlAllocateHandle = (void *)FUNC0(hntdll, "RtlAllocateHandle");
	pRtlFreeHandle = (void *)FUNC0(hntdll, "RtlFreeHandle");
        pRtlAllocateAndInitializeSid = (void *)FUNC0(hntdll, "RtlAllocateAndInitializeSid");
        pRtlFreeSid = (void *)FUNC0(hntdll, "RtlFreeSid");
        pRtlGetThreadErrorMode = (void *)FUNC0(hntdll, "RtlGetThreadErrorMode");
        pRtlSetThreadErrorMode = (void *)FUNC0(hntdll, "RtlSetThreadErrorMode");
        pLdrProcessRelocationBlock  = (void *)FUNC0(hntdll, "LdrProcessRelocationBlock");
        pRtlIpv4AddressToStringA = (void *)FUNC0(hntdll, "RtlIpv4AddressToStringA");
        pRtlIpv4AddressToStringExA = (void *)FUNC0(hntdll, "RtlIpv4AddressToStringExA");
        pRtlIpv4StringToAddressA = (void *)FUNC0(hntdll, "RtlIpv4StringToAddressA");
        pRtlIpv4StringToAddressExA = (void *)FUNC0(hntdll, "RtlIpv4StringToAddressExA");
        pRtlIpv6AddressToStringA = (void *)FUNC0(hntdll, "RtlIpv6AddressToStringA");
        pRtlIpv6AddressToStringExA = (void *)FUNC0(hntdll, "RtlIpv6AddressToStringExA");
        pRtlIpv6StringToAddressA = (void *)FUNC0(hntdll, "RtlIpv6StringToAddressA");
        pRtlIpv6StringToAddressW = (void *)FUNC0(hntdll, "RtlIpv6StringToAddressW");
        pRtlIpv6StringToAddressExA = (void *)FUNC0(hntdll, "RtlIpv6StringToAddressExA");
        pRtlIpv6StringToAddressExW = (void *)FUNC0(hntdll, "RtlIpv6StringToAddressExW");
        pLdrAddRefDll = (void *)FUNC0(hntdll, "LdrAddRefDll");
        pLdrLockLoaderLock = (void *)FUNC0(hntdll, "LdrLockLoaderLock");
        pLdrUnlockLoaderLock = (void *)FUNC0(hntdll, "LdrUnlockLoaderLock");
        pRtlMultiByteToUnicodeN = (void *)FUNC0(hntdll, "RtlMultiByteToUnicodeN");
        pRtlGetCompressionWorkSpaceSize = (void *)FUNC0(hntdll, "RtlGetCompressionWorkSpaceSize");
        pRtlDecompressBuffer = (void *)FUNC0(hntdll, "RtlDecompressBuffer");
        pRtlDecompressFragment = (void *)FUNC0(hntdll, "RtlDecompressFragment");
        pRtlCompressBuffer = (void *)FUNC0(hntdll, "RtlCompressBuffer");
        pRtlIsCriticalSectionLocked = (void *)FUNC0(hntdll, "RtlIsCriticalSectionLocked");
        pRtlIsCriticalSectionLockedByThread = (void *)FUNC0(hntdll, "RtlIsCriticalSectionLockedByThread");
        pRtlInitializeCriticalSectionEx = (void *)FUNC0(hntdll, "RtlInitializeCriticalSectionEx");
        pLdrEnumerateLoadedModules = (void *)FUNC0(hntdll, "LdrEnumerateLoadedModules");
        pRtlQueryPackageIdentity = (void *)FUNC0(hntdll, "RtlQueryPackageIdentity");
        pRtlMakeSelfRelativeSD = (void *)FUNC0(hntdll, "RtlMakeSelfRelativeSD");
        pRtlAbsoluteToSelfRelativeSD = (void *)FUNC0(hntdll, "RtlAbsoluteToSelfRelativeSD");
        pLdrRegisterDllNotification = (void *)FUNC0(hntdll, "LdrRegisterDllNotification");
        pLdrUnregisterDllNotification = (void *)FUNC0(hntdll, "LdrUnregisterDllNotification");
    }
    hkernel32 = FUNC1("kernel32.dll");
    FUNC2(hkernel32 != 0, "LoadLibrary failed\n");
    if (hkernel32) {
        pIsWow64Process = (void *)FUNC0(hkernel32, "IsWow64Process");
    }
    FUNC3((char*)src_aligned_block, src_src);
    FUNC2(FUNC4(src) == 15, "Source must be 16 bytes long!\n");
}