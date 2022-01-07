
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {scalar_t__ p_chain; } ;
struct TYPE_8__ {TYPE_3__ cache; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int ssize_t ;


 scalar_t__ AStreamRefillBlock (TYPE_1__*) ;
 size_t VLC_CLIP (size_t,int ,size_t) ;
 scalar_t__ VLC_EGENERIC ;
 int block_BytestreamRemaining (TYPE_3__*) ;
 scalar_t__ block_GetBytes (TYPE_3__*,void*,size_t) ;

__attribute__((used)) static ssize_t AStreamReadBlock(stream_t *s, void *buf, size_t len)
{
    stream_sys_t *sys = s->p_sys;

    ssize_t i_current = block_BytestreamRemaining( &sys->cache );
    size_t i_copy = VLC_CLIP((size_t)i_current, 0, len);






    if( i_copy == 0 )
    {


        if( AStreamRefillBlock(s) == VLC_EGENERIC )
            return 0;
    }


    if( block_GetBytes( &sys->cache, buf, i_copy ) )
        return -1;



    if( i_copy == 0 && sys->cache.p_chain )
        return AStreamReadBlock( s, buf, len );

    return i_copy;
}
