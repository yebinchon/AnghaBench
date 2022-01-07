
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PCPTABLEINFO ;


 int NLS_IsDefaultCharForMB (int ,int) ;

USHORT
NLS_RecordsCountForMBTable(PCPTABLEINFO CodePageTable)
{
    USHORT CodePageChar;
    USHORT Count = 0;

    for (CodePageChar = 0; CodePageChar <= 0xFF; CodePageChar++)
    {
        if (!NLS_IsDefaultCharForMB(CodePageTable, CodePageChar))
            Count++;
    }

    return Count;
}
