
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_4__ {int* MultiByteTable; int UniDefaultChar; } ;
typedef int* PUSHORT ;
typedef TYPE_1__* PCPTABLEINFO ;


 scalar_t__ NLS_IsGlyphTablePresent (TYPE_1__*) ;

USHORT
NLS_RecordsCountForGlyphTable(PCPTABLEINFO CodePageTable)
{
    USHORT Count = 0;

    if (NLS_IsGlyphTablePresent(CodePageTable))
    {
        PUSHORT GlyphTable = CodePageTable->MultiByteTable + 256 + 1;
        USHORT CodePageChar;

        for (CodePageChar = 0; CodePageChar <= 0xFF; CodePageChar++)
        {
            USHORT Char = GlyphTable[CodePageChar];

            if (Char != CodePageTable->UniDefaultChar)
                Count++;
        }
    }

    return Count;
}
