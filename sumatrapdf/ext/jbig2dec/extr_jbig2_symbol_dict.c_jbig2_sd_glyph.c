
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** glyphs; } ;
typedef TYPE_1__ Jbig2SymbolDict ;
typedef int Jbig2Image ;



Jbig2Image *
jbig2_sd_glyph(Jbig2SymbolDict *dict, unsigned int id)
{
    if (dict == ((void*)0))
        return ((void*)0);
    return dict->glyphs[id];
}
