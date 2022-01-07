
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_3__ {scalar_t__* MultiByteTable; scalar_t__ UniDefaultChar; } ;
typedef TYPE_1__* PCPTABLEINFO ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
NLS_IsDefaultCharForMB(PCPTABLEINFO CodePageTable, UCHAR Char)
{
    if (CodePageTable->MultiByteTable[Char] != CodePageTable->UniDefaultChar)
        return FALSE;

    return TRUE;
}
