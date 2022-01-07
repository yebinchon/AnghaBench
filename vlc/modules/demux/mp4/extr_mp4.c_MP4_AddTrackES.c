
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_4__ {scalar_t__ b_forced_spu; TYPE_2__ fmt; } ;
typedef TYPE_1__ mp4_track_t ;
typedef int es_out_t ;
typedef int es_out_id_t ;


 int ES_OUT_SET_ES_DEFAULT ;
 scalar_t__ SPU_ES ;
 int * es_out_Add (int *,TYPE_2__*) ;
 int es_out_Control (int *,int ,int *) ;

__attribute__((used)) static es_out_id_t * MP4_AddTrackES( es_out_t *out, mp4_track_t *p_track )
{
    es_out_id_t *p_es = es_out_Add( out, &p_track->fmt );

    if( p_track->fmt.i_cat == SPU_ES && p_es && p_track->b_forced_spu )
        es_out_Control( out, ES_OUT_SET_ES_DEFAULT, p_es );

    return p_es;
}
