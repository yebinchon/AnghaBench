
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_2__ {int * lpTable; int uDevType; } ;
typedef int * LPCWSTR ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 size_t MAX_MCICMDTABLE ;
 TYPE_1__* S_MciCmdTable ;
 int TRACE (char*,size_t,int *,int ) ;
 int TRUE ;
 int strlenW (int *) ;

__attribute__((used)) static BOOL MCI_IsCommandTableValid(UINT uTbl)
{
    const BYTE* lmem;
    LPCWSTR str;
    DWORD flg;
    WORD eid;
    int idx = 0;
    BOOL inCst = FALSE;

    TRACE("Dumping cmdTbl=%d [lpTable=%p devType=%d]\n",
   uTbl, S_MciCmdTable[uTbl].lpTable, S_MciCmdTable[uTbl].uDevType);

    if (uTbl >= MAX_MCICMDTABLE || !S_MciCmdTable[uTbl].lpTable)
 return FALSE;

    lmem = S_MciCmdTable[uTbl].lpTable;
    do {
        str = (LPCWSTR)lmem;
        lmem += (strlenW(str) + 1) * sizeof(WCHAR);
        flg = *(const DWORD*)lmem;
        eid = *(const WORD*)(lmem + sizeof(DWORD));
        lmem += sizeof(DWORD) + sizeof(WORD);
        idx ++;

        switch (eid) {
        case 137: if (!*str || !flg) return FALSE; idx = 0; break;
        case 128: if (inCst) return FALSE; break;
        case 131: if (!*str) return FALSE; break;
        case 135: if (*str || flg || idx == 0) return FALSE; idx = 0; break;
        case 129: if (*str || idx != 1) return FALSE; break;
        case 132: if (!*str) return FALSE; break;
        case 134: if (*str || flg) return FALSE; idx = 0; break;
        case 130: if (!*str || inCst) return FALSE; break;
        case 136: if (inCst) return FALSE; inCst = TRUE; break;
        case 133: if (*str || flg || !inCst) return FALSE; inCst = FALSE; break;
        default: return FALSE;
        }
    } while (eid != 134);
    return TRUE;
}
