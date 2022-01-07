
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t i_event; TYPE_2__* p_current; TYPE_1__** pp_event; } ;
typedef TYPE_3__ vlc_epg_t ;
struct TYPE_6__ {char* psz_name; } ;
struct TYPE_5__ {char* psz_name; } ;


 int printf (char*,...) ;

__attribute__((used)) static void print_order( const vlc_epg_t *p_epg )
{
    printf("order: ");
    for( size_t i = 0; i < p_epg->i_event; i++ )
        printf("%s ", p_epg->pp_event[i]->psz_name );
    if( p_epg->p_current )
        printf(" current %s", p_epg->p_current->psz_name );
    printf("\n");
}
