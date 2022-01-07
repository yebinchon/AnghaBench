
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSP_INF_INFORMATION ;
typedef int * PDWORD ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int SetupGetInfInformationA (int ,int ,int *,int ,int *) ;

__attribute__((used)) static PSP_INF_INFORMATION alloc_inf_info(LPCSTR filename, DWORD search, PDWORD size)
{
    PSP_INF_INFORMATION info;
    BOOL ret;

    ret = SetupGetInfInformationA(filename, search, ((void*)0), 0, size);
    if (!ret)
        return ((void*)0);

    info = HeapAlloc(GetProcessHeap(), 0, *size);
    return info;
}
