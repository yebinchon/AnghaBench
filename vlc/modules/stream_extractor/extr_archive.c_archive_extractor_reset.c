
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int identifier; int source; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_extractor_t ;
struct TYPE_8__ {int b_dead; int b_eof; scalar_t__ i_offset; } ;
typedef TYPE_2__ private_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ archive_clean (TYPE_2__*) ;
 scalar_t__ archive_init (TYPE_2__*,int ) ;
 scalar_t__ archive_seek_subentry (TYPE_2__*,int ) ;
 scalar_t__ vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int archive_extractor_reset( stream_extractor_t* p_extractor )
{
    private_sys_t* p_sys = p_extractor->p_sys;

    if( vlc_stream_Seek( p_extractor->source, 0 )
        || archive_clean( p_sys )
        || archive_init( p_sys, p_extractor->source )
        || archive_seek_subentry( p_sys, p_extractor->identifier ) )
    {
        p_sys->b_dead = 1;
        return VLC_EGENERIC;
    }

    p_sys->i_offset = 0;
    p_sys->b_eof = 0;
    p_sys->b_dead = 0;
    return VLC_SUCCESS;
}
