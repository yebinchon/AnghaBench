
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_8__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_10__ {size_t i_total; scalar_t__ p_chain; scalar_t__* pp_last; } ;
struct TYPE_7__ {size_t read_bytes; int read_time; } ;
struct TYPE_9__ {TYPE_4__ cache; TYPE_1__ stat; } ;
typedef TYPE_3__ stream_sys_t ;
typedef int block_t ;


 size_t STREAM_CACHE_SIZE ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int block_BytestreamFlush (TYPE_4__*) ;
 int block_BytestreamPush (TYPE_4__*,int *) ;
 int block_ChainProperties (int *,int *,size_t*,int *) ;
 scalar_t__ vlc_killed () ;
 scalar_t__ vlc_stream_Eof (int ) ;
 int * vlc_stream_ReadBlock (int ) ;
 scalar_t__ const vlc_tick_now () ;

__attribute__((used)) static int AStreamRefillBlock(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;
    size_t cache_size = sys->cache.i_total;


    if (cache_size >= STREAM_CACHE_SIZE)
    {
        block_BytestreamFlush( &sys->cache );
        cache_size = sys->cache.i_total;
    }
    if (cache_size >= STREAM_CACHE_SIZE &&
        sys->cache.p_chain != *sys->cache.pp_last)
    {

        return VLC_SUCCESS;
    }


    const vlc_tick_t start = vlc_tick_now();
    block_t *b;

    for (;;)
    {
        if (vlc_killed())
            return VLC_EGENERIC;


        if ((b = vlc_stream_ReadBlock(s->s)))
            break;
        if (vlc_stream_Eof(s->s))
            return VLC_EGENERIC;
    }
    sys->stat.read_time += vlc_tick_now() - start;
    size_t added_bytes;
    block_ChainProperties( b, ((void*)0), &added_bytes, ((void*)0) );
    sys->stat.read_bytes += added_bytes;

    block_BytestreamPush( &sys->cache, b );
    return VLC_SUCCESS;
}
