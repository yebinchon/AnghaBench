
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int input_attachment_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_5__ {int attachments; int i_attachments; int i_cover_idx; int i_cover_score; } ;
typedef TYPE_2__ demux_sys_t ;


 int * ParseFlacPicture (int const*,size_t,int ,int *,int *) ;
 int TAB_APPEND (int ,int ,int *) ;

__attribute__((used)) static void ParsePicture( demux_t *p_demux, const uint8_t *p_data, size_t i_data )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    i_data -= 4; p_data += 4;

    input_attachment_t *p_attachment = ParseFlacPicture( p_data, i_data,
        p_sys->i_attachments, &p_sys->i_cover_score, &p_sys->i_cover_idx );
    if( p_attachment == ((void*)0) )
        return;

    TAB_APPEND( p_sys->i_attachments, p_sys->attachments, p_attachment );
}
