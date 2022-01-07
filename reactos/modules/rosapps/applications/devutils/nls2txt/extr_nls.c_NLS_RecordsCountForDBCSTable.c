
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef size_t UCHAR ;
struct TYPE_3__ {scalar_t__ UniDefaultChar; scalar_t__* DBCSOffsets; } ;
typedef scalar_t__* PUSHORT ;
typedef TYPE_1__* PCPTABLEINFO ;



USHORT
NLS_RecordsCountForDBCSTable(PCPTABLEINFO CodePageTable, UCHAR LeadByte)
{
    PUSHORT LeadByteInfo = CodePageTable->DBCSOffsets;
    USHORT CodePageChar;
    USHORT Count = 0;

    for (CodePageChar = 0; CodePageChar <= 0xFF; CodePageChar++)
    {
        USHORT Info = LeadByteInfo[LeadByte];

        if (Info && LeadByteInfo[Info + CodePageChar] != CodePageTable->UniDefaultChar)
        {
            Count++;
        }
    }

    return Count;
}
