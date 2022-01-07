
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * p_first; int ** pp_last; } ;
struct TYPE_5__ {int * p_frame; } ;
struct TYPE_7__ {TYPE_2__ queue; TYPE_1__ info; } ;
typedef TYPE_3__ asf_track_t ;


 int block_ChainRelease (int *) ;

__attribute__((used)) static void FlushQueue( asf_track_t *tk )
{
    if( tk->info.p_frame )
    {
        block_ChainRelease( tk->info.p_frame );
        tk->info.p_frame = ((void*)0);
    }
    if( tk->queue.p_first )
    {
        block_ChainRelease( tk->queue.p_first );
        tk->queue.p_first = ((void*)0);
        tk->queue.pp_last = &tk->queue.p_first;
    }
}
