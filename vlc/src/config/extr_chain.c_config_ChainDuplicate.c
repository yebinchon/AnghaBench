
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next; int * psz_value; int * psz_name; } ;
typedef TYPE_1__ config_chain_t ;


 TYPE_1__* malloc (int) ;
 int * strdup (int *) ;

config_chain_t *config_ChainDuplicate( const config_chain_t *p_src )
{
    config_chain_t *p_dst = ((void*)0);
    config_chain_t **pp_last = &p_dst;

    for( ; p_src != ((void*)0); p_src = p_src->p_next )
    {
        config_chain_t *p = malloc( sizeof(*p) );
        if( !p )
            break;
        p->p_next = ((void*)0);
        p->psz_name = p_src->psz_name ? strdup( p_src->psz_name ) : ((void*)0);
        p->psz_value = p_src->psz_value ? strdup( p_src->psz_value ) : ((void*)0);

        *pp_last = p;
        pp_last = &p->p_next;
    }
    return p_dst;
}
