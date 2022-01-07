
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_description; int fmt_out; int fmt_in; int * p_module; } ;
typedef TYPE_1__ decoder_t ;


 int es_format_Clean (int *) ;
 int module_unneed (TYPE_1__*,int *) ;
 int vlc_meta_Delete (int *) ;

void decoder_Clean( decoder_t *p_dec )
{
    if ( p_dec->p_module != ((void*)0) )
    {
        module_unneed(p_dec, p_dec->p_module);
        p_dec->p_module = ((void*)0);
    }

    es_format_Clean( &p_dec->fmt_in );
    es_format_Clean( &p_dec->fmt_out );

    if ( p_dec->p_description )
    {
        vlc_meta_Delete(p_dec->p_description);
        p_dec->p_description = ((void*)0);
    }
}
