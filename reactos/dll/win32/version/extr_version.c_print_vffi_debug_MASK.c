#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_3__ {int dwFileType; scalar_t__ dwFileSubtype; int dwFileVersionMS; int dwProductVersionMS; int dwStrucVersion; int dwFileVersionLS; int dwProductVersionLS; int dwFileFlags; int dwFileOS; int dwFileDateMS; int dwFileDateLS; int /*<<< orphan*/  dwFileFlagsMask; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ TRUE ; 
#define  VFT2_DRV_COMM 160 
#define  VFT2_DRV_DISPLAY 159 
#define  VFT2_DRV_INPUTMETHOD 158 
#define  VFT2_DRV_INSTALLABLE 157 
#define  VFT2_DRV_KEYBOARD 156 
#define  VFT2_DRV_LANGUAGE 155 
#define  VFT2_DRV_MOUSE 154 
#define  VFT2_DRV_NETWORK 153 
#define  VFT2_DRV_PRINTER 152 
#define  VFT2_DRV_SOUND 151 
#define  VFT2_DRV_SYSTEM 150 
#define  VFT2_DRV_VERSIONED_PRINTER 149 
#define  VFT2_FONT_RASTER 148 
#define  VFT2_FONT_TRUETYPE 147 
#define  VFT2_FONT_VECTOR 146 
#define  VFT2_UNKNOWN 145 
#define  VFT_APP 144 
#define  VFT_DLL 143 
#define  VFT_DRV 142 
#define  VFT_FONT 141 
#define  VFT_STATIC_LIB 140 
#define  VFT_UNKNOWN 139 
#define  VFT_VXD 138 
#define  VOS_DOS 137 
#define  VOS_NT 136 
#define  VOS_OS216 135 
#define  VOS_OS232 134 
#define  VOS_UNKNOWN 133 
#define  VOS__BASE 132 
#define  VOS__PM16 131 
#define  VOS__PM32 130 
#define  VOS__WINDOWS16 129 
#define  VOS__WINDOWS32 128 
 int VS_FF_DEBUG ; 
 int VS_FF_INFOINFERRED ; 
 int VS_FF_PATCHED ; 
 int VS_FF_PRERELEASE ; 
 int VS_FF_PRIVATEBUILD ; 
 int VS_FF_SPECIALBUILD ; 

__attribute__((used)) static void FUNC5(const VS_FIXEDFILEINFO *vffi)
{
    BOOL    versioned_printer = FALSE;

    if((vffi->dwFileType == VFT_DLL) || (vffi->dwFileType == VFT_DRV))
    {
        if(vffi->dwFileSubtype == VFT2_DRV_VERSIONED_PRINTER)
            /* this is documented for newer w2k Drivers and up */
            versioned_printer = TRUE;
        else if( (vffi->dwFileSubtype == VFT2_DRV_PRINTER) &&
                 (vffi->dwFileVersionMS != vffi->dwProductVersionMS) &&
                 (vffi->dwFileVersionMS > 0) &&
                 (vffi->dwFileVersionMS <= 3) )
            /* found this on NT 3.51, NT4.0 and old w2k Drivers */
            versioned_printer = TRUE;
    }

    FUNC4("structversion=%u.%u, ",
            FUNC1(vffi->dwStrucVersion),FUNC3(vffi->dwStrucVersion));
    if(versioned_printer)
    {
        WORD mode = FUNC3(vffi->dwFileVersionMS);
        WORD ver_rev = FUNC1(vffi->dwFileVersionLS);
        FUNC4("fileversion=%u.%u.%u.%u (%s.major.minor.release), ",
            (vffi->dwFileVersionMS),
            FUNC0(ver_rev), FUNC2(ver_rev), FUNC3(vffi->dwFileVersionLS),
            (mode == 3) ? "Usermode" : ((mode <= 2) ? "Kernelmode" : "?") );
    }
    else
    {
        FUNC4("fileversion=%u.%u.%u.%u, ",
            FUNC1(vffi->dwFileVersionMS),FUNC3(vffi->dwFileVersionMS),
            FUNC1(vffi->dwFileVersionLS),FUNC3(vffi->dwFileVersionLS));
    }
    FUNC4("productversion=%u.%u.%u.%u\n",
          FUNC1(vffi->dwProductVersionMS),FUNC3(vffi->dwProductVersionMS),
          FUNC1(vffi->dwProductVersionLS),FUNC3(vffi->dwProductVersionLS));

    FUNC4("flagmask=0x%x, flags=0x%x %s%s%s%s%s%s\n",
          vffi->dwFileFlagsMask, vffi->dwFileFlags,
          (vffi->dwFileFlags & VS_FF_DEBUG) ? "DEBUG," : "",
          (vffi->dwFileFlags & VS_FF_PRERELEASE) ? "PRERELEASE," : "",
          (vffi->dwFileFlags & VS_FF_PATCHED) ? "PATCHED," : "",
          (vffi->dwFileFlags & VS_FF_PRIVATEBUILD) ? "PRIVATEBUILD," : "",
          (vffi->dwFileFlags & VS_FF_INFOINFERRED) ? "INFOINFERRED," : "",
          (vffi->dwFileFlags & VS_FF_SPECIALBUILD) ? "SPECIALBUILD," : "");

    FUNC4("(");

    FUNC4("OS=0x%x.0x%x ", FUNC1(vffi->dwFileOS), FUNC3(vffi->dwFileOS));

    switch (vffi->dwFileOS&0xFFFF0000)
    {
    case VOS_DOS:FUNC4("DOS,");break;
    case VOS_OS216:FUNC4("OS/2-16,");break;
    case VOS_OS232:FUNC4("OS/2-32,");break;
    case VOS_NT:FUNC4("NT,");break;
    case VOS_UNKNOWN:
    default:
        FUNC4("UNKNOWN(0x%x),",vffi->dwFileOS&0xFFFF0000);break;
    }

    switch (FUNC3(vffi->dwFileOS))
    {
    case VOS__BASE:FUNC4("BASE");break;
    case VOS__WINDOWS16:FUNC4("WIN16");break;
    case VOS__WINDOWS32:FUNC4("WIN32");break;
    case VOS__PM16:FUNC4("PM16");break;
    case VOS__PM32:FUNC4("PM32");break;
    default:
        FUNC4("UNKNOWN(0x%x)",FUNC3(vffi->dwFileOS));break;
    }

    FUNC4(")\n");

    switch (vffi->dwFileType)
    {
    case VFT_APP:FUNC4("filetype=APP");break;
    case VFT_DLL:
        FUNC4("filetype=DLL");
        if(vffi->dwFileSubtype != 0)
        {
            if(versioned_printer) /* NT3.x/NT4.0 or old w2k Driver  */
                FUNC4(",PRINTER");
            FUNC4(" (subtype=0x%x)", vffi->dwFileSubtype);
        }
        break;
    case VFT_DRV:
        FUNC4("filetype=DRV,");
        switch(vffi->dwFileSubtype)
        {
        case VFT2_DRV_PRINTER:FUNC4("PRINTER");break;
        case VFT2_DRV_KEYBOARD:FUNC4("KEYBOARD");break;
        case VFT2_DRV_LANGUAGE:FUNC4("LANGUAGE");break;
        case VFT2_DRV_DISPLAY:FUNC4("DISPLAY");break;
        case VFT2_DRV_MOUSE:FUNC4("MOUSE");break;
        case VFT2_DRV_NETWORK:FUNC4("NETWORK");break;
        case VFT2_DRV_SYSTEM:FUNC4("SYSTEM");break;
        case VFT2_DRV_INSTALLABLE:FUNC4("INSTALLABLE");break;
        case VFT2_DRV_SOUND:FUNC4("SOUND");break;
        case VFT2_DRV_COMM:FUNC4("COMM");break;
        case VFT2_DRV_INPUTMETHOD:FUNC4("INPUTMETHOD");break;
        case VFT2_DRV_VERSIONED_PRINTER:FUNC4("VERSIONED_PRINTER");break;
        case VFT2_UNKNOWN:
        default:
            FUNC4("UNKNOWN(0x%x)",vffi->dwFileSubtype);break;
        }
        break;
    case VFT_FONT:
        FUNC4("filetype=FONT,");
        switch (vffi->dwFileSubtype)
        {
        case VFT2_FONT_RASTER:FUNC4("RASTER");break;
        case VFT2_FONT_VECTOR:FUNC4("VECTOR");break;
        case VFT2_FONT_TRUETYPE:FUNC4("TRUETYPE");break;
        default:FUNC4("UNKNOWN(0x%x)",vffi->dwFileSubtype);break;
        }
        break;
    case VFT_VXD:FUNC4("filetype=VXD");break;
    case VFT_STATIC_LIB:FUNC4("filetype=STATIC_LIB");break;
    case VFT_UNKNOWN:
    default:
        FUNC4("filetype=Unknown(0x%x)",vffi->dwFileType);break;
    }

    FUNC4("\n");
    FUNC4("filedate=0x%x.0x%x\n",vffi->dwFileDateMS,vffi->dwFileDateLS);
}