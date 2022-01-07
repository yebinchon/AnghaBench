
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int cache; } ;
typedef TYPE_2__ stream_sys_t ;


 scalar_t__ AStreamRefillBlock (TYPE_1__*) ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int block_BytestreamEmpty (int *) ;
 scalar_t__ block_SkipBytes (int *,int ) ;
 scalar_t__ vlc_stream_Seek (int ,int ) ;

__attribute__((used)) static int AStreamSeekBlock(stream_t *s, uint64_t i_pos)
{
    stream_sys_t *sys = s->p_sys;

    if( block_SkipBytes( &sys->cache, i_pos) == VLC_SUCCESS )
        return VLC_SUCCESS;



    if (vlc_stream_Seek(s->s, i_pos)) return VLC_EGENERIC;

    block_BytestreamEmpty( &sys->cache );


    if (AStreamRefillBlock(s))
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}
