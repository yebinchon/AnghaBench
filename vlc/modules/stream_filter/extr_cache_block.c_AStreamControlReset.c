
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int cache; } ;
typedef TYPE_2__ stream_sys_t ;


 int AStreamPrebufferBlock (TYPE_1__*) ;
 int block_BytestreamEmpty (int *) ;

__attribute__((used)) static void AStreamControlReset(stream_t *s)
{
    stream_sys_t *sys = s->p_sys;

    block_BytestreamEmpty( &sys->cache );


    AStreamPrebufferBlock(s);
}
