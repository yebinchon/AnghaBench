
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {int Length; int Buffer; } ;
struct TYPE_13__ {TYPE_1__ Name; } ;
typedef TYPE_2__* POBJECT_NAME_INFORMATION ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_2__* LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CreateFileW (TYPE_2__*,int,int ,int *,int ,int ,int *) ;
 char* DRIVER_NAME ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetLongPathNameW (scalar_t__,TYPE_2__*,int) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ NtQueryObject (scalar_t__,int ,TYPE_2__*,int,int*) ;
 int OPEN_EXISTING ;
 int ObjectNameInformation ;
 scalar_t__ STATUS_SUCCESS ;
 int TRUE ;
 TYPE_2__ UNICODE_NULL ;
 int wcsncpy (TYPE_2__*,int ,int) ;
 int wprintf (char*,int,char*) ;

BOOL
ConvertPath(LPCWSTR lpPath,
            LPWSTR lpDevice)
{
    LPWSTR lpFullPath = ((void*)0);
    DWORD size;

    if (lpPath)
    {
        size = GetLongPathNameW(lpPath,
                                0,
                                0);
        if (!size)
            return FALSE;

        size = (size + 1) * sizeof(WCHAR);

        lpFullPath = HeapAlloc(GetProcessHeap(),
                               0,
                               size);
        if (!lpFullPath)
            return FALSE;

        if (GetLongPathNameW(lpPath,
                             lpFullPath,
                             size))
        {
            HANDLE hDevice;
            POBJECT_NAME_INFORMATION pObjName;
            NTSTATUS Status;
            DWORD len;

            hDevice = CreateFileW(lpFullPath,
                                  GENERIC_READ | GENERIC_WRITE,
                                  0,
                                  ((void*)0),
                                  OPEN_EXISTING,
                                  FILE_ATTRIBUTE_NORMAL,
                                  ((void*)0));

            HeapFree(GetProcessHeap(), 0, lpFullPath);

            if(hDevice == INVALID_HANDLE_VALUE)
            {
                wprintf(L"[%x] Failed to open %s\n", GetLastError(), DRIVER_NAME);
                return FALSE;
            }

            size = MAX_PATH * sizeof(WCHAR);
            pObjName = HeapAlloc(GetProcessHeap(), 0, size);
            if (!pObjName)
                return FALSE;

            Status = NtQueryObject(hDevice,
                                   ObjectNameInformation,
                                   pObjName,
                                   size,
                                   &size);
            if (Status == STATUS_SUCCESS)
            {
                len = pObjName->Name.Length / sizeof(WCHAR);
                wcsncpy(lpDevice, pObjName->Name.Buffer, len);
                lpDevice[len] = UNICODE_NULL;

                HeapFree(GetProcessHeap(), 0, pObjName);

                return TRUE;
            }

            HeapFree(GetProcessHeap(), 0, pObjName);
        }
    }

    return FALSE;
}
