
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_6__ {int cBytes; int wgBlank; int wgInvalid; int wgKashida; scalar_t__ iKashidaWidth; scalar_t__ wgDefault; } ;
struct TYPE_5__ {int tmBreakChar; scalar_t__ tmDefaultChar; } ;
struct TYPE_7__ {TYPE_2__ sfp; TYPE_1__ tm; int sfnt; } ;
typedef TYPE_3__ ScriptCache ;
typedef int HDC ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GDI_ERROR ;
 int GGI_MARK_NONEXISTING_GLYPHS ;
 scalar_t__ GetGlyphIndicesW (int const,int const*,int,int*,int ) ;
 int TRUE ;

__attribute__((used)) static inline BOOL set_cache_font_properties(const HDC hdc, ScriptCache *sc)
{
    sc->sfp.cBytes = sizeof(sc->sfp);

    if (!sc->sfnt)
    {
        sc->sfp.wgBlank = sc->tm.tmBreakChar;
        sc->sfp.wgDefault = sc->tm.tmDefaultChar;
        sc->sfp.wgInvalid = sc->sfp.wgBlank;
        sc->sfp.wgKashida = 0xFFFF;
        sc->sfp.iKashidaWidth = 0;
    }
    else
    {
        static const WCHAR chars[4] = {0x0020, 0x200B, 0xF71B, 0x0640};




        WORD gi[4];

        if (GetGlyphIndicesW(hdc, chars, 4, gi, GGI_MARK_NONEXISTING_GLYPHS) != GDI_ERROR)
        {
            if(gi[0] != 0xFFFF)
                sc->sfp.wgBlank = gi[0];
            else
                sc->sfp.wgBlank = 0;

            sc->sfp.wgDefault = 0;

            if (gi[2] != 0xFFFF)
                sc->sfp.wgInvalid = gi[2];
            else if (gi[1] != 0xFFFF)
                sc->sfp.wgInvalid = gi[1];
            else if (gi[0] != 0xFFFF)
                sc->sfp.wgInvalid = gi[0];
            else
                sc->sfp.wgInvalid = 0;

            sc->sfp.wgKashida = gi[3];

            sc->sfp.iKashidaWidth = 0;
        }
        else
            return FALSE;
    }
    return TRUE;
}
