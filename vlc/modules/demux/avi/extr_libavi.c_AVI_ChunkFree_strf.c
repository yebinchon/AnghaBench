
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int avi_chunk_t ;
struct TYPE_7__ {int p_bih; } ;
struct TYPE_6__ {scalar_t__ i_cat; } ;
struct TYPE_5__ {int p_wf; } ;
struct TYPE_8__ {TYPE_3__ vids; TYPE_2__ common; TYPE_1__ auds; } ;
typedef TYPE_4__ avi_chunk_strf_t ;


 scalar_t__ AUDIO_ES ;
 int FREENULL (int ) ;
 scalar_t__ VIDEO_ES ;

__attribute__((used)) static void AVI_ChunkFree_strf( avi_chunk_t *p_chk )
{
    avi_chunk_strf_t *p_strf = (avi_chunk_strf_t*)p_chk;
    if( p_strf->common.i_cat == AUDIO_ES )
    {
        FREENULL( p_strf->auds.p_wf );
    }
    else if( p_strf->common.i_cat == VIDEO_ES )
    {
        FREENULL( p_strf->vids.p_bih );
    }
}
