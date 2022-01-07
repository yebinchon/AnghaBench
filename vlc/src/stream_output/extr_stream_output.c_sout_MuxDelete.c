
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_cfg; int psz_mux; scalar_t__ p_module; } ;
typedef TYPE_1__ sout_mux_t ;


 int config_ChainDestroy (int ) ;
 int free (int ) ;
 int module_unneed (TYPE_1__*,scalar_t__) ;
 int vlc_object_delete (TYPE_1__*) ;

void sout_MuxDelete( sout_mux_t *p_mux )
{
    if( p_mux->p_module )
    {
        module_unneed( p_mux, p_mux->p_module );
    }
    free( p_mux->psz_mux );

    config_ChainDestroy( p_mux->p_cfg );

    vlc_object_delete(p_mux);
}
