
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t n_symbols; int * glyphs; } ;
typedef TYPE_1__ Jbig2SymbolDict ;
typedef int Jbig2Ctx ;


 int JBIG2_SEVERITY_WARNING ;
 int jbig2_error (int *,int ,int,char*) ;
 int jbig2_image_reference (int *,int ) ;
 TYPE_1__* jbig2_sd_new (int *,size_t) ;

Jbig2SymbolDict *
jbig2_sd_cat(Jbig2Ctx *ctx, uint32_t n_dicts, Jbig2SymbolDict **dicts)
{
    uint32_t i, j, k, symbols;
    Jbig2SymbolDict *new_dict = ((void*)0);


    symbols = 0;
    for (i = 0; i < n_dicts; i++)
        symbols += dicts[i]->n_symbols;


    new_dict = jbig2_sd_new(ctx, symbols);
    if (new_dict != ((void*)0)) {
        k = 0;
        for (i = 0; i < n_dicts; i++)
            for (j = 0; j < dicts[i]->n_symbols; j++)
                new_dict->glyphs[k++] = jbig2_image_reference(ctx, dicts[i]->glyphs[j]);
    } else {
        jbig2_error(ctx, JBIG2_SEVERITY_WARNING, -1, "failed to allocate new symbol dictionary");
    }

    return new_dict;
}
