
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int pp_title_seekpoints; int i_title_seekpoints; int i_cover_idx; int i_cover_score; int attachments; int i_attachments; int p_meta; } ;
typedef TYPE_2__ demux_sys_t ;


 int vorbis_ParseComment (int *,int *,int const*,size_t,int *,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void ParseComment( demux_t *p_demux, const uint8_t *p_data, size_t i_data )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( i_data < 4 )
        return;

    vorbis_ParseComment( ((void*)0), &p_sys->p_meta, &p_data[4], i_data - 4,
        &p_sys->i_attachments, &p_sys->attachments,
        &p_sys->i_cover_score, &p_sys->i_cover_idx,
        &p_sys->i_title_seekpoints, &p_sys->pp_title_seekpoints, ((void*)0), ((void*)0) );
}
