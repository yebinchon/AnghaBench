
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int * lpTable; } ;
typedef scalar_t__ LPCWSTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ERR (char*,size_t) ;
 int FALSE ;
 scalar_t__ MCI_END_COMMAND ;
 scalar_t__ MCI_END_COMMAND_LIST ;
 int MCI_IsCommandTableValid (size_t) ;
 TYPE_1__* S_MciCmdTable ;
 int TRUE ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static BOOL MCI_DumpCommandTable(UINT uTbl)
{
    const BYTE* lmem;
    LPCWSTR str;
    DWORD flg;
    WORD eid;

    if (!MCI_IsCommandTableValid(uTbl)) {
 ERR("Ooops: %d is not valid\n", uTbl);
 return FALSE;
    }

    lmem = S_MciCmdTable[uTbl].lpTable;
    do {
 do {
     str = (LPCWSTR)lmem;
     lmem += (strlenW(str) + 1) * sizeof(WCHAR);
     flg = *(const DWORD*)lmem;
     eid = *(const WORD*)(lmem + sizeof(DWORD));

     lmem += sizeof(DWORD) + sizeof(WORD);
 } while (eid != MCI_END_COMMAND && eid != MCI_END_COMMAND_LIST);

    } while (eid != MCI_END_COMMAND_LIST);
    return TRUE;
}
