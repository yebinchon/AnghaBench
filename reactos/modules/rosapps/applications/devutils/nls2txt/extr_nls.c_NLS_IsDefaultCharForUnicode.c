
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t USHORT ;
struct TYPE_4__ {size_t DefaultChar; int WideCharTable; } ;
typedef size_t* PUSHORT ;
typedef size_t* PUCHAR ;
typedef TYPE_1__* PCPTABLEINFO ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ NLS_IsDBCSCodePage (TYPE_1__*) ;
 int TRUE ;

BOOL
NLS_IsDefaultCharForUnicode(PCPTABLEINFO CodePageTable, USHORT Char)
{
    USHORT CodePageChar;

    if (NLS_IsDBCSCodePage(CodePageTable))
    {
        PUSHORT MultiByteTable = (PUSHORT)CodePageTable->WideCharTable;
        CodePageChar = MultiByteTable[Char];
    }
    else
    {
        PUCHAR SingleByteTable = (PUCHAR)CodePageTable->WideCharTable;
        CodePageChar = SingleByteTable[Char];
    }

    if (CodePageChar != CodePageTable->DefaultChar)
        return FALSE;

    return TRUE;
}
