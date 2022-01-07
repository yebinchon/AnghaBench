
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int dwFileType; scalar_t__ dwFileSubtype; int dwFileVersionMS; int dwProductVersionMS; int dwStrucVersion; int dwFileVersionLS; int dwProductVersionLS; int dwFileFlags; int dwFileOS; int dwFileDateMS; int dwFileDateLS; int dwFileFlagsMask; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int HIBYTE (int) ;
 int HIWORD (int) ;
 int LOBYTE (int) ;
 int LOWORD (int) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int VS_FF_DEBUG ;
 int VS_FF_INFOINFERRED ;
 int VS_FF_PATCHED ;
 int VS_FF_PRERELEASE ;
 int VS_FF_PRIVATEBUILD ;
 int VS_FF_SPECIALBUILD ;

__attribute__((used)) static void print_vffi_debug(const VS_FIXEDFILEINFO *vffi)
{
    BOOL versioned_printer = FALSE;

    if((vffi->dwFileType == 143) || (vffi->dwFileType == 142))
    {
        if(vffi->dwFileSubtype == 149)

            versioned_printer = TRUE;
        else if( (vffi->dwFileSubtype == 152) &&
                 (vffi->dwFileVersionMS != vffi->dwProductVersionMS) &&
                 (vffi->dwFileVersionMS > 0) &&
                 (vffi->dwFileVersionMS <= 3) )

            versioned_printer = TRUE;
    }

    TRACE("structversion=%u.%u, ",
            HIWORD(vffi->dwStrucVersion),LOWORD(vffi->dwStrucVersion));
    if(versioned_printer)
    {
        WORD mode = LOWORD(vffi->dwFileVersionMS);
        WORD ver_rev = HIWORD(vffi->dwFileVersionLS);
        TRACE("fileversion=%u.%u.%u.%u (%s.major.minor.release), ",
            (vffi->dwFileVersionMS),
            HIBYTE(ver_rev), LOBYTE(ver_rev), LOWORD(vffi->dwFileVersionLS),
            (mode == 3) ? "Usermode" : ((mode <= 2) ? "Kernelmode" : "?") );
    }
    else
    {
        TRACE("fileversion=%u.%u.%u.%u, ",
            HIWORD(vffi->dwFileVersionMS),LOWORD(vffi->dwFileVersionMS),
            HIWORD(vffi->dwFileVersionLS),LOWORD(vffi->dwFileVersionLS));
    }
    TRACE("productversion=%u.%u.%u.%u\n",
          HIWORD(vffi->dwProductVersionMS),LOWORD(vffi->dwProductVersionMS),
          HIWORD(vffi->dwProductVersionLS),LOWORD(vffi->dwProductVersionLS));

    TRACE("flagmask=0x%x, flags=0x%x %s%s%s%s%s%s\n",
          vffi->dwFileFlagsMask, vffi->dwFileFlags,
          (vffi->dwFileFlags & VS_FF_DEBUG) ? "DEBUG," : "",
          (vffi->dwFileFlags & VS_FF_PRERELEASE) ? "PRERELEASE," : "",
          (vffi->dwFileFlags & VS_FF_PATCHED) ? "PATCHED," : "",
          (vffi->dwFileFlags & VS_FF_PRIVATEBUILD) ? "PRIVATEBUILD," : "",
          (vffi->dwFileFlags & VS_FF_INFOINFERRED) ? "INFOINFERRED," : "",
          (vffi->dwFileFlags & VS_FF_SPECIALBUILD) ? "SPECIALBUILD," : "");

    TRACE("(");

    TRACE("OS=0x%x.0x%x ", HIWORD(vffi->dwFileOS), LOWORD(vffi->dwFileOS));

    switch (vffi->dwFileOS&0xFFFF0000)
    {
    case 137:TRACE("DOS,");break;
    case 135:TRACE("OS/2-16,");break;
    case 134:TRACE("OS/2-32,");break;
    case 136:TRACE("NT,");break;
    case 133:
    default:
        TRACE("UNKNOWN(0x%x),",vffi->dwFileOS&0xFFFF0000);break;
    }

    switch (LOWORD(vffi->dwFileOS))
    {
    case 132:TRACE("BASE");break;
    case 129:TRACE("WIN16");break;
    case 128:TRACE("WIN32");break;
    case 131:TRACE("PM16");break;
    case 130:TRACE("PM32");break;
    default:
        TRACE("UNKNOWN(0x%x)",LOWORD(vffi->dwFileOS));break;
    }

    TRACE(")\n");

    switch (vffi->dwFileType)
    {
    case 144:TRACE("filetype=APP");break;
    case 143:
        TRACE("filetype=DLL");
        if(vffi->dwFileSubtype != 0)
        {
            if(versioned_printer)
                TRACE(",PRINTER");
            TRACE(" (subtype=0x%x)", vffi->dwFileSubtype);
        }
        break;
    case 142:
        TRACE("filetype=DRV,");
        switch(vffi->dwFileSubtype)
        {
        case 152:TRACE("PRINTER");break;
        case 156:TRACE("KEYBOARD");break;
        case 155:TRACE("LANGUAGE");break;
        case 159:TRACE("DISPLAY");break;
        case 154:TRACE("MOUSE");break;
        case 153:TRACE("NETWORK");break;
        case 150:TRACE("SYSTEM");break;
        case 157:TRACE("INSTALLABLE");break;
        case 151:TRACE("SOUND");break;
        case 160:TRACE("COMM");break;
        case 158:TRACE("INPUTMETHOD");break;
        case 149:TRACE("VERSIONED_PRINTER");break;
        case 145:
        default:
            TRACE("UNKNOWN(0x%x)",vffi->dwFileSubtype);break;
        }
        break;
    case 141:
        TRACE("filetype=FONT,");
        switch (vffi->dwFileSubtype)
        {
        case 148:TRACE("RASTER");break;
        case 146:TRACE("VECTOR");break;
        case 147:TRACE("TRUETYPE");break;
        default:TRACE("UNKNOWN(0x%x)",vffi->dwFileSubtype);break;
        }
        break;
    case 138:TRACE("filetype=VXD");break;
    case 140:TRACE("filetype=STATIC_LIB");break;
    case 139:
    default:
        TRACE("filetype=Unknown(0x%x)",vffi->dwFileType);break;
    }

    TRACE("\n");
    TRACE("filedate=0x%x.0x%x\n",vffi->dwFileDateMS,vffi->dwFileDateLS);
}
