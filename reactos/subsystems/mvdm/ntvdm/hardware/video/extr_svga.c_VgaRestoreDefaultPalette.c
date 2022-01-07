
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t USHORT ;
struct TYPE_3__ {scalar_t__ peFlags; void* peBlue; void* peGreen; void* peRed; } ;
typedef TYPE_1__* PPALETTEENTRY ;


 void* GetBValue (int ) ;
 void* GetGValue (int ) ;
 void* GetRValue (int ) ;
 int VGA_COLOR_TO_DAC (void*) ;
 int * VgaDacRegisters ;
 int * VgaDefaultPalette ;

__attribute__((used)) static VOID VgaRestoreDefaultPalette(PPALETTEENTRY Entries, USHORT NumOfEntries)
{
    USHORT i;


    for (i = 0; i < NumOfEntries; i++)
    {

        Entries[i].peRed = GetRValue(VgaDefaultPalette[i]);
        Entries[i].peGreen = GetGValue(VgaDefaultPalette[i]);
        Entries[i].peBlue = GetBValue(VgaDefaultPalette[i]);
        Entries[i].peFlags = 0;


        VgaDacRegisters[i * 3] = VGA_COLOR_TO_DAC(GetRValue(VgaDefaultPalette[i]));
        VgaDacRegisters[i * 3 + 1] = VGA_COLOR_TO_DAC(GetGValue(VgaDefaultPalette[i]));
        VgaDacRegisters[i * 3 + 2] = VGA_COLOR_TO_DAC(GetBValue(VgaDefaultPalette[i]));
    }
}
