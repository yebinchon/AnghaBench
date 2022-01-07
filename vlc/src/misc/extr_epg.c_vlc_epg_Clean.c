
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t i_event; int psz_name; int * pp_event; } ;
typedef TYPE_1__ vlc_epg_t ;


 int TAB_CLEAN (size_t,int *) ;
 int free (int ) ;
 int vlc_epg_event_Delete (int ) ;

__attribute__((used)) static void vlc_epg_Clean( vlc_epg_t *p_epg )
{
    size_t i;
    for( i = 0; i < p_epg->i_event; i++ )
        vlc_epg_event_Delete( p_epg->pp_event[i] );
    TAB_CLEAN( p_epg->i_event, p_epg->pp_event );
    free( p_epg->psz_name );
}
