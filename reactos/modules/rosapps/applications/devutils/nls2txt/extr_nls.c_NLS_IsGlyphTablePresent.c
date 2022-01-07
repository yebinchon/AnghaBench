
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* MultiByteTable; } ;
typedef TYPE_1__* PCPTABLEINFO ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
NLS_IsGlyphTablePresent(PCPTABLEINFO CodePageTable)
{
    return (CodePageTable->MultiByteTable[256]) ? TRUE : FALSE;
}
