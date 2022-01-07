
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ USHORT ;
typedef int ULONG ;
typedef int PCPTABLEINFO ;


 int NLS_IsDefaultCharForUnicode (int ,int) ;

USHORT
NLS_RecordsCountForUnicodeTable(PCPTABLEINFO CodePageTable)
{
    ULONG UnicodeChar;
    USHORT Count = 0;

    for (UnicodeChar = 0; UnicodeChar <= 0xFFFF; UnicodeChar++)
    {
        if (!NLS_IsDefaultCharForUnicode(CodePageTable, UnicodeChar))
            Count++;
    }

    return Count;
}
