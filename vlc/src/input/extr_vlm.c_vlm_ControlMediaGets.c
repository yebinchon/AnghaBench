
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int i_media; TYPE_1__** media; } ;
typedef TYPE_2__ vlm_t ;
typedef int vlm_media_t ;
struct TYPE_4__ {int cfg; } ;


 int TAB_APPEND (int,int **,int *) ;
 int TAB_INIT (int,int **) ;
 int VLC_SUCCESS ;
 int * vlm_media_Duplicate (int *) ;

__attribute__((used)) static int vlm_ControlMediaGets( vlm_t *p_vlm, vlm_media_t ***ppp_dsc, int *pi_dsc )
{
    vlm_media_t **pp_dsc;
    int i_dsc;

    TAB_INIT( i_dsc, pp_dsc );
    for( int i = 0; i < p_vlm->i_media; i++ )
    {
        vlm_media_t *p_dsc = vlm_media_Duplicate( &p_vlm->media[i]->cfg );
        TAB_APPEND( i_dsc, pp_dsc, p_dsc );
    }

    *ppp_dsc = pp_dsc;
    *pi_dsc = i_dsc;

    return VLC_SUCCESS;
}
