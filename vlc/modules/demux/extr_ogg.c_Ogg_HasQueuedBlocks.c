
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p_blocks; } ;
struct TYPE_5__ {TYPE_1__ queue; } ;
typedef TYPE_2__ logical_stream_t ;



__attribute__((used)) static inline bool Ogg_HasQueuedBlocks( const logical_stream_t *p_stream )
{
    return ( p_stream->queue.p_blocks != ((void*)0) );
}
