#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int VideoMode; int VideoPageSize; int VideoPage; int VideoPageOffset; int VGAOptions; int VGASwitches; int ScreenRows; int CharacterHeight; int /*<<< orphan*/  ScreenColumns; } ;
struct TYPE_6__ {int PageSize; int CharacterHeight; int /*<<< orphan*/  CharacterWidth; int /*<<< orphan*/  VgaRegisters; } ;
struct TYPE_5__ {int Y; int /*<<< orphan*/  X; } ;
typedef  int /*<<< orphan*/ * PULONG ;
typedef  TYPE_1__ COORD ;
typedef  int BYTE ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BIOS_MAX_PAGES ; 
 int BIOS_MAX_VIDEO_MODE ; 
 int /*<<< orphan*/  BaseAddress ; 
 TYPE_4__* Bda ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,char*,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FONT_8x14_OFFSET ; 
 int /*<<< orphan*/  FONT_8x16_OFFSET ; 
 int /*<<< orphan*/  FONT_8x8_OFFSET ; 
 int /*<<< orphan*/  Font8x14 ; 
 int /*<<< orphan*/  Font8x16 ; 
 int /*<<< orphan*/  Font8x8 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  VGA_CRTC_DATA ; 
 int /*<<< orphan*/  VGA_CRTC_INDEX ; 
 int /*<<< orphan*/  VGA_CRTC_START_ADDR_HIGH_REG ; 
 int /*<<< orphan*/  VGA_CRTC_START_ADDR_LOW_REG ; 
 int VGA_FONT_CHARACTERS ; 
 int /*<<< orphan*/  VIDEO_BIOS_DATA_SEG ; 
 scalar_t__ VbeInitialized ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_1__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_2__* VideoModes ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static BOOLEAN FUNC21(BYTE ModeNumber)
{
    BYTE Page;
    COORD Resolution;
    BYTE OrgModeNumber = ModeNumber;

    /*
     * IBM standard modes do not clear the screen if the
     * high bit of AL is set (EGA or higher only).
     * See Ralf Brown: http://www.ctyme.com/intr/rb-0069.htm
     * for more information.
     */
    BOOLEAN DoNotClear = !!(ModeNumber & 0x80);

    /* Retrieve the real mode number and check its validity */
    ModeNumber &= 0x7F;
    // if (ModeNumber >= ARRAYSIZE(VideoModes))

    FUNC1("Switching to mode %02Xh (%02Xh) %s clearing the screen; VgaRegisters = 0x%p\n",
            ModeNumber, OrgModeNumber, (DoNotClear ? "without" : "and"), VideoModes[ModeNumber].VgaRegisters);

    if (ModeNumber > BIOS_MAX_VIDEO_MODE)
    {
        /* This could be an extended video mode, so call the VBE BIOS */
        return FUNC9(ModeNumber);
    }

    if (!FUNC14(VideoModes[ModeNumber].VgaRegisters)) return FALSE;
    if (VbeInitialized && Bda->VideoMode > BIOS_MAX_VIDEO_MODE)
    {
        /*
         * Since we're switching from an extended video mode to a standard VGA
         * mode, tell the VBE BIOS to reset the extended registers.
         */
        FUNC8();
    }

    FUNC10(ModeNumber);

    /* Clear the VGA memory if needed */
    if (!DoNotClear) FUNC11();

    /* Update the values in the BDA */
    Bda->VideoMode       = ModeNumber;
    Bda->VideoPageSize   = VideoModes[ModeNumber].PageSize;
    Bda->VideoPage       = 0;
    Bda->VideoPageOffset = Bda->VideoPage * Bda->VideoPageSize;

    /* 256 KB Video RAM; set bit 7 if we do not clear the screen */
    Bda->VGAOptions      = 0x60 | (Bda->VGAOptions & 0x7F) | (DoNotClear ? 0x80 : 0x00);
    Bda->VGASwitches     = 0xF9;    /* High-resolution  */

    // Bda->VGAFlags;
    // Bda->CrtModeControl;
    // Bda->CrtColorPaletteMask;

    /* Set the start address in the CRTC */
    FUNC3(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_LOW_REG);
    FUNC3(VGA_CRTC_DATA , FUNC5(Bda->VideoPageOffset));
    FUNC3(VGA_CRTC_INDEX, VGA_CRTC_START_ADDR_HIGH_REG);
    FUNC3(VGA_CRTC_DATA , FUNC2(Bda->VideoPageOffset));

    /* Update the screen size */
    Resolution = FUNC12();
    // This could be simplified if the VGA helper always returned the resolution
    // in number of pixels, instead of in number of cells for text-modes only...
    if (!FUNC4(ModeNumber))
    {
        Resolution.X /= VideoModes[ModeNumber].CharacterWidth ;
        Resolution.Y /= VideoModes[ModeNumber].CharacterHeight;
    }
    Bda->ScreenColumns = Resolution.X;
    Bda->ScreenRows    = Resolution.Y - 1;

    /* Update the current font */
    Bda->CharacterHeight = VideoModes[ModeNumber].CharacterHeight;
    switch (Bda->CharacterHeight)
    {
        /*
         * Write the default font to the VGA font plane for text-modes only.
         * Update the BIOS INT 43h vector (far pointer to the character range 00h-...).
         */
        case 8:
        {
            if (FUNC4(ModeNumber))
                FUNC15(0, Font8x8, FUNC0(Font8x8) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = FUNC6(FONT_8x8_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
        case 14:
        {
            if (FUNC4(ModeNumber))
                FUNC15(0, Font8x14, FUNC0(Font8x14) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = FUNC6(FONT_8x14_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
        case 16:
        {
            if (FUNC4(ModeNumber))
                FUNC15(0, Font8x16, FUNC0(Font8x16) / VGA_FONT_CHARACTERS);

            ((PULONG)BaseAddress)[0x43] = FUNC6(FONT_8x16_OFFSET, VIDEO_BIOS_DATA_SEG);
            break;
        }
    }

#if 0 // Commented, because I need to think about how to change correctly the ScreenRows
      // in the code that really use it (the Font generator functions of INT 10h, AH=11h)
      // so that it also changes the screen resolution *in text mode only*.
    switch (getBL())
    {
        case 0x00: Bda->ScreenRows = getDL()-1; break;
        case 0x01: Bda->ScreenRows = 13;        break;
        case 0x03: Bda->ScreenRows = 42;        break;
        case 0x02:
        default  : Bda->ScreenRows = 24;        break;
    }
#endif

    /*
     * Update the cursor shape (text-mode only).
     * Use the default CGA cursor scanline values,
     * see: http://vitaly_filatov.tripod.com/ng/asm/asm_023.2.html
     */
    if (FUNC4(ModeNumber))
        // FIXME: we might read the CRT registers and do the adjustment?
        FUNC18(FUNC7(0x07, 0x06));

    /* Set the cursor position for each page */
    for (Page = 0; Page < BIOS_MAX_PAGES; ++Page)
        FUNC17(0, 0, Page);

    if (!DoNotClear) FUNC16();

    /* Refresh display */
    FUNC13();

    return TRUE;
}