
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_4__ {int wgBlank; int wgDefault; } ;
struct TYPE_5__ {TYPE_1__ sfp; } ;
typedef TYPE_2__ ScriptCache ;
typedef int SCRIPT_ANALYSIS ;
typedef int INT ;
typedef int HDC ;



__attribute__((used)) static void ContextualShape_Control(HDC hdc, ScriptCache *psc, SCRIPT_ANALYSIS *psa, WCHAR* pwcChars, INT cChars, WORD* pwOutGlyphs, INT* pcGlyphs, INT cMaxGlyphs, WORD *pwLogClust)
{
    int i;
    for (i=0; i < cChars; i++)
    {
        switch (pwcChars[i])
        {
            case 0x000A:
            case 0x000D:
                pwOutGlyphs[i] = psc->sfp.wgBlank;
                break;
            default:
                if (pwcChars[i] < 0x1C)
                    pwOutGlyphs[i] = psc->sfp.wgDefault;
                else
                    pwOutGlyphs[i] = psc->sfp.wgBlank;
        }
    }
}
