
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int VGAOptions; int CrtModeControl; int CrtBasePort; } ;
struct TYPE_4__ {int Misc; int* Attribute; int* Sequencer; int* CRT; int* Graphics; } ;
typedef TYPE_1__* PVGA_REGISTERS ;
typedef int BOOLEAN ;


 TYPE_3__* Bda ;
 int FALSE ;
 int IOReadB (int ) ;
 int IOWriteB (int ,int) ;
 int TRUE ;
 int VGA_AC_CONTROL_BLINK ;
 size_t VGA_AC_CONTROL_REG ;
 int VGA_AC_INDEX ;
 size_t VGA_AC_MAX_REG ;
 int VGA_CRTC_DATA ;
 size_t VGA_CRTC_END_HORZ_BLANKING_REG ;
 size_t VGA_CRTC_END_VERT_RETRACE_REG ;
 int VGA_CRTC_INDEX ;
 int VGA_CRTC_INDEX_COLOR ;
 int VGA_CRTC_INDEX_MONO ;
 size_t VGA_CRTC_MAX_REG ;
 int VGA_DAC_MASK ;
 int VGA_GC_DATA ;
 int VGA_GC_INDEX ;
 size_t VGA_GC_MAX_REG ;
 int VGA_INSTAT1_READ ;
 int VGA_MISC_WRITE ;
 int VGA_SEQ_CLOCK_REG ;
 int VGA_SEQ_CLOCK_SD ;
 int VGA_SEQ_DATA ;
 int VGA_SEQ_INDEX ;
 size_t VGA_SEQ_MAX_REG ;
 int VGA_SEQ_RESET_AR ;
 int VGA_SEQ_RESET_REG ;
 int VGA_SEQ_RESET_SR ;
 int VgaSetSinglePaletteRegister (size_t,int) ;
 int setIF (int) ;

__attribute__((used)) static BOOLEAN VgaSetRegisters(PVGA_REGISTERS Registers)
{
    UINT i;

    if (Registers == ((void*)0)) return FALSE;


    setIF(0);







    Bda->CrtBasePort = (Registers->Misc & 0x01) ? VGA_CRTC_INDEX_COLOR
                                                : VGA_CRTC_INDEX_MONO;

    Bda->VGAOptions = (Bda->VGAOptions & 0xFD) | (!(Registers->Misc & 0x01) << 1);
    Bda->CrtModeControl = (Bda->CrtModeControl & 0xFB) | (!(Registers->Misc & 0x01) << 1);


    if (Registers->Attribute[VGA_AC_CONTROL_REG] & VGA_AC_CONTROL_BLINK)
        Bda->CrtModeControl |= (1 << 5);
    else
        Bda->CrtModeControl &= ~(1 << 5);


    IOWriteB(VGA_SEQ_INDEX, VGA_SEQ_CLOCK_REG);
    IOWriteB(VGA_SEQ_DATA , IOReadB(VGA_SEQ_DATA) | VGA_SEQ_CLOCK_SD);


    IOWriteB(VGA_MISC_WRITE, Registers->Misc);


    IOWriteB(VGA_SEQ_INDEX, VGA_SEQ_RESET_REG);
    IOWriteB(VGA_SEQ_DATA , VGA_SEQ_RESET_AR );


    for (i = 1; i < VGA_SEQ_MAX_REG; i++)
    {
        IOWriteB(VGA_SEQ_INDEX, i);
        IOWriteB(VGA_SEQ_DATA , Registers->Sequencer[i]);
    }


    IOWriteB(VGA_SEQ_INDEX, VGA_SEQ_RESET_REG);
    IOWriteB(VGA_SEQ_DATA , VGA_SEQ_RESET_SR | VGA_SEQ_RESET_AR);


    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_END_HORZ_BLANKING_REG);
    IOWriteB(VGA_CRTC_DATA , IOReadB(VGA_CRTC_DATA) | 0x80);
    IOWriteB(VGA_CRTC_INDEX, VGA_CRTC_END_VERT_RETRACE_REG);
    IOWriteB(VGA_CRTC_DATA , IOReadB(VGA_CRTC_DATA) & ~0x80);

    Registers->CRT[VGA_CRTC_END_HORZ_BLANKING_REG] |= 0x80;
    Registers->CRT[VGA_CRTC_END_VERT_RETRACE_REG] &= ~0x80;


    for (i = 0; i < VGA_CRTC_MAX_REG; i++)
    {
        IOWriteB(VGA_CRTC_INDEX, i);
        IOWriteB(VGA_CRTC_DATA , Registers->CRT[i]);
    }


    for (i = 0; i < VGA_GC_MAX_REG; i++)
    {
        IOWriteB(VGA_GC_INDEX, i);
        IOWriteB(VGA_GC_DATA , Registers->Graphics[i]);
    }


    for (i = 0; i < VGA_AC_MAX_REG; i++)
    {
        VgaSetSinglePaletteRegister(i, Registers->Attribute[i]);
    }


    IOWriteB(VGA_DAC_MASK, 0xFF);


    IOReadB(VGA_INSTAT1_READ);
    IOWriteB(VGA_AC_INDEX, 0x20);


    IOWriteB(VGA_SEQ_INDEX, VGA_SEQ_CLOCK_REG);
    IOWriteB(VGA_SEQ_DATA , IOReadB(VGA_SEQ_DATA) & ~VGA_SEQ_CLOCK_SD);


    setIF(1);

    return TRUE;
}
