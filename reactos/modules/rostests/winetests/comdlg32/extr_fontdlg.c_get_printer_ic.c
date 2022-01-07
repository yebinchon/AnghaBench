
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pPrinterName; int pDriverName; } ;
typedef TYPE_1__ PRINTER_INFO_2A ;
typedef int * LPBYTE ;
typedef int * HDC ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int * CreateICA (int ,int ,int *,int *) ;
 scalar_t__ EnumPrintersA (int ,int *,int,int *,scalar_t__,scalar_t__*,scalar_t__*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int PRINTER_ENUM_LOCAL ;

__attribute__((used)) static HDC get_printer_ic(void)
{
    PRINTER_INFO_2A *info;
    DWORD info_size, num_printers=0;
    BOOL ret;
    HDC result=((void*)0);

    EnumPrintersA(PRINTER_ENUM_LOCAL, ((void*)0), 2, ((void*)0), 0, &info_size, &num_printers);

    if (info_size == 0)
        return ((void*)0);

    info = HeapAlloc(GetProcessHeap(), 0, info_size);

    ret = EnumPrintersA(PRINTER_ENUM_LOCAL, ((void*)0), 2, (LPBYTE)info, info_size, &info_size, &num_printers);

    if (ret)
        result = CreateICA(info->pDriverName, info->pPrinterName, ((void*)0), ((void*)0));

    HeapFree(GetProcessHeap(), 0, info);

    return result;
}
