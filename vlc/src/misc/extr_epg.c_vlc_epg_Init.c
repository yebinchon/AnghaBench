
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_present; int pp_event; int i_event; int * p_current; int * psz_name; int i_source_id; int i_id; } ;
typedef TYPE_1__ vlc_epg_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int TAB_INIT (int ,int ) ;

__attribute__((used)) static void vlc_epg_Init( vlc_epg_t *p_epg, uint32_t i_id, uint16_t i_source_id )
{
    p_epg->i_id = i_id;
    p_epg->i_source_id = i_source_id;
    p_epg->psz_name = ((void*)0);
    p_epg->p_current = ((void*)0);
    p_epg->b_present = 0;
    TAB_INIT( p_epg->i_event, p_epg->pp_event );
}
