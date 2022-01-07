
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int psz_value; int psz_name; struct TYPE_4__* p_next; } ;
typedef TYPE_1__ config_chain_t ;


 int FREENULL (int ) ;
 int free (TYPE_1__*) ;

void config_ChainDestroy( config_chain_t *p_cfg )
{
    while( p_cfg != ((void*)0) )
    {
        config_chain_t *p_next;

        p_next = p_cfg->p_next;

        FREENULL( p_cfg->psz_name );
        FREENULL( p_cfg->psz_value );
        free( p_cfg );

        p_cfg = p_next;
    }
}
