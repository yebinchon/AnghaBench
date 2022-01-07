
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int VideoMode; int VideoPageSize; int VideoPage; int VideoPageOffset; int VGAOptions; int VGASwitches; int ScreenRows; int CharacterHeight; int ScreenColumns; } ;
struct TYPE_6__ {int PageSize; int CharacterHeight; int CharacterWidth; int VgaRegisters; } ;
struct TYPE_5__ {int Y; int X; } ;
typedef int * PULONG ;
typedef TYPE_1__ COORD ;
typedef int BYTE ;
typedef int BOOLEAN ;


 int ARRAYSIZE (int ) ;
 int BIOS_MAX_PAGES ;
 int BIOS_MAX_VIDEO_MODE ;
 int BaseAddress ;
 TYPE_4__* Bda ;
 int DPRINT1 (char*,int,int,char*,int ) ;
 int FALSE ;
 int FONT_8x14_OFFSET ;
 int FONT_8x16_OFFSET ;
 int FONT_8x8_OFFSET ;
 int Font8x14 ;
 int Font8x16 ;
 int Font8x8 ;
 int HIBYTE (int) ;
 int IOWriteB (int ,int ) ;
 scalar_t__ IS_TEXT_MODE (int) ;
 int LOBYTE (int) ;
 int MAKELONG (int ,int ) ;
 int MAKEWORD (int,int) ;
 int TRUE ;
 int VGA_CRTC_DATA ;
 int VGA_CRTC_INDEX ;
 int VGA_CRTC_START_ADDR_HIGH_REG ;
 int VGA_CRTC_START_ADDR_LOW_REG ;
 int VGA_FONT_CHARACTERS ;
 int VIDEO_BIOS_DATA_SEG ;
 scalar_t__ VbeInitialized ;
 int VbeResetExtendedRegisters () ;
 int VbeSetExtendedVideoMode (int) ;
 int VgaChangePalette (int) ;
 int VgaClearMemory () ;
 TYPE_1__ VgaGetDisplayResolution () ;
 int VgaRefreshDisplay () ;
 int VgaSetRegisters (int ) ;
 int VgaWriteTextModeFont (int ,int ,int) ;
 int VidBiosClearScreen () ;
 int VidBiosSetCursorPosition (int ,int ,int) ;
 int VidBiosSetCursorShape (int ) ;
 TYPE_2__* VideoModes ;
 int getBL () ;
 int getDL () ;

__attribute__((used)) static BOOLEAN VidBiosSetVideoMode(BYTE ModeNumber)
{
    BYTE Page;
    COORD Resolution;
    BYTE OrgModeNumber = ModeNumber;







    BOOLEAN DoNotClear = !!(ModeNumber & 0x80);


    ModeNumber &= 0x7F;


    DPRINT1("Switching to mode %02Xh (%02Xh) %s clearing the screen; VgaRegisters = 0x%p\n",
            ModeNumber, OrgModeNumber, (DoNotClear ? "without" : "and"), VideoModes[ModeNumber].VgaRegisters);

    if (ModeNumber > BIOS_MAX_VIDEO_MODE)
    {

        return VbeSetExtendedVideoMode(ModeNumber);
    }

    if (!VgaSetRegisters(VideoModes[ModeNumber].VgaRegisters)) return FALSE;
    if (VbeInitialized && Bda->VideoMode > BIOS_MAX_VIDEO_MODE)
    {




        VbeResetExtendedRegisters();
    }

    VgaChangePalette(ModeNumber);


    if (!DoNotClear) VgaClearMemory();


    Bda->VideoMode = ModeNumber;
    Bda->VideoPageSize = VideoModes[ModeNumber].PageSize;
    Bda->VideoPage = 0;
    Bda->VideoPageOffset = Bda->VideoPage * Bda->VideoPageSize;


    Bda->VGAOptions = 0x60 | (Bda->VGAOptions & 0x7F) | (DoNotClear ? 0x80 : 0x00);
    Bda->VGASwitches = 0xF9;






    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_LOW_REG);
    IOWriteB(VGA_CRTC_DATA , LOBYTE(Bda->VideoPageOffset));
    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_HIGH_REG);
    IOWriteB(VGA_CRTC_DATA , HIBYTE(Bda->VideoPageOffset));


    Resolution = VgaGetDisplayResolution();


    if (!IS_TEXT_MODE(ModeNumber))
    {
        Resolution.X /= VideoModes[ModeNumber].CharacterWidth ;
        Resolution.Y /= VideoModes[ModeNumber].CharacterHeight;
    }
    Bda->ScreenColumns = Resolution.X;
    Bda->ScreenRows = Resolution.Y - 1;


    Bda->CharacterHeight = VideoModes[ModeNumber].CharacterHeight;
    switch (Bda->CharacterHeight)
    {




        case 8:
        {
            if (IS_TEXT_MODE(ModeNumber))
                VgaWriteTextModeFont(0, Font8x8, ARRAYSIZE(Font8x8) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = MAKELONG(FONT_8x8_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
        case 14:
        {
            if (IS_TEXT_MODE(ModeNumber))
                VgaWriteTextModeFont(0, Font8x14, ARRAYSIZE(Font8x14) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = MAKELONG(FONT_8x14_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
        case 16:
        {
            if (IS_TEXT_MODE(ModeNumber))
                VgaWriteTextModeFont(0, Font8x16, ARRAYSIZE(Font8x16) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = MAKELONG(FONT_8x16_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
    }
    if (IS_TEXT_MODE(ModeNumber))

        VidBiosSetCursorShape(MAKEWORD(0x07, 0x06));


    for (Page = 0; Page < BIOS_MAX_PAGES; ++Page)
        VidBiosSetCursorPosition(0, 0, Page);

    if (!DoNotClear) VidBiosClearScreen();


    VgaRefreshDisplay();

    return TRUE;
}
