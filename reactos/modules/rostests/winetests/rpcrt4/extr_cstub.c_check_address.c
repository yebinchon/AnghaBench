
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int e_lfanew; } ;
struct TYPE_4__ {int SizeOfImage; } ;
struct TYPE_5__ {TYPE_1__ OptionalHeader; } ;
typedef TYPE_2__* PIMAGE_NT_HEADERS ;
typedef TYPE_3__* PIMAGE_DOS_HEADER ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetModuleHandleA (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL check_address(void *actual, void *expected)
{
    static void *ole32_start = ((void*)0);
    static void *ole32_end = ((void*)0);
    static void *combase_start = ((void*)0);
    static void *combase_end = ((void*)0);

    if (actual == expected)
        return TRUE;


    if (ole32_start == ((void*)0) || ole32_end == ((void*)0))
    {
        PIMAGE_NT_HEADERS nt_headers;
        ole32_start = (void *) GetModuleHandleA("ole32.dll");
        if (ole32_start == ((void*)0))
            return FALSE;
        nt_headers = (PIMAGE_NT_HEADERS)((char *) ole32_start + ((PIMAGE_DOS_HEADER) ole32_start)->e_lfanew);
        ole32_end = (void *)((char *) ole32_start + nt_headers->OptionalHeader.SizeOfImage);
    }

    if (ole32_start <= actual && actual < ole32_end)
        return TRUE;


    if (combase_start == ((void*)0) || combase_end == ((void*)0))
    {
        PIMAGE_NT_HEADERS nt_headers;
        combase_start = (void *) GetModuleHandleA("combase.dll");
        if (combase_start == ((void*)0))
            return FALSE;
        nt_headers = (PIMAGE_NT_HEADERS)((char *) combase_start + ((PIMAGE_DOS_HEADER) combase_start)->e_lfanew);
        combase_end = (void *)((char *) combase_start + nt_headers->OptionalHeader.SizeOfImage);
    }

    return (combase_start <= actual && actual < combase_end);
}
