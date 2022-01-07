
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int PVOID ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 scalar_t__ ReadProcessMemory (int ,int ,int ,int ,int *) ;
 int ok (int,char*,int ,...) ;

__attribute__((used)) static BOOL readproc(HANDLE proc, LPVOID address, PVOID target, DWORD size)
{
    SIZE_T dwRead;
    if (ReadProcessMemory(proc, address, target, size, &dwRead))
    {
        ok(dwRead == size, "Expected to read %u bytes, got %lu\n", size, dwRead);
        return dwRead == size;
    }
    ok(0, "RPM failed with %u\n", GetLastError());
    return FALSE;
}
