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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* pCopyFile2 ; 
 void* pCreateFile2 ; 
 void* pFindFirstFileExA ; 
 void* pGetFileInformationByHandleEx ; 
 void* pGetFinalPathNameByHandleA ; 
 void* pGetFinalPathNameByHandleW ; 
 void* pGetSystemWindowsDirectoryA ; 
 void* pGetVolumeNameForVolumeMountPointA ; 
 void* pNtCreateFile ; 
 void* pOpenFileById ; 
 void* pQueueUserAPC ; 
 void* pReplaceFileA ; 
 void* pReplaceFileW ; 
 void* pRtlAnsiStringToUnicodeString ; 
 void* pRtlDosPathNameToNtPathName_U ; 
 void* pRtlFreeUnicodeString ; 
 void* pRtlInitAnsiString ; 
 void* pSetFileInformationByHandle ; 
 void* pSetFileValidData ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hntdll = FUNC0("ntdll");
    HMODULE hkernel32 = FUNC0("kernel32");

    pNtCreateFile = (void *)FUNC1(hntdll, "NtCreateFile");
    pRtlDosPathNameToNtPathName_U = (void *)FUNC1(hntdll, "RtlDosPathNameToNtPathName_U");
    pRtlAnsiStringToUnicodeString = (void *)FUNC1(hntdll, "RtlAnsiStringToUnicodeString");
    pRtlInitAnsiString = (void *)FUNC1(hntdll, "RtlInitAnsiString");
    pRtlFreeUnicodeString = (void *)FUNC1(hntdll, "RtlFreeUnicodeString");

    pFindFirstFileExA=(void*)FUNC1(hkernel32, "FindFirstFileExA");
    pReplaceFileA=(void*)FUNC1(hkernel32, "ReplaceFileA");
    pReplaceFileW=(void*)FUNC1(hkernel32, "ReplaceFileW");
    pGetSystemWindowsDirectoryA=(void*)FUNC1(hkernel32, "GetSystemWindowsDirectoryA");
    pGetVolumeNameForVolumeMountPointA = (void *) FUNC1(hkernel32, "GetVolumeNameForVolumeMountPointA");
    pQueueUserAPC = (void *) FUNC1(hkernel32, "QueueUserAPC");
    pGetFileInformationByHandleEx = (void *) FUNC1(hkernel32, "GetFileInformationByHandleEx");
    pOpenFileById = (void *) FUNC1(hkernel32, "OpenFileById");
    pSetFileValidData = (void *) FUNC1(hkernel32, "SetFileValidData");
    pCopyFile2 = (void *) FUNC1(hkernel32, "CopyFile2");
    pCreateFile2 = (void *) FUNC1(hkernel32, "CreateFile2");
    pGetFinalPathNameByHandleA = (void *) FUNC1(hkernel32, "GetFinalPathNameByHandleA");
    pGetFinalPathNameByHandleW = (void *) FUNC1(hkernel32, "GetFinalPathNameByHandleW");
    pSetFileInformationByHandle = (void *) FUNC1(hkernel32, "SetFileInformationByHandle");
}