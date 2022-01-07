
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ i_chunk_pos; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef TYPE_2__ avi_chunk_t ;


 scalar_t__ AVI_ChunkSize (TYPE_2__ const*) ;

__attribute__((used)) static uint64_t AVI_ChunkEnd( const avi_chunk_t *p_ck )
{
    return p_ck->common.i_chunk_pos + AVI_ChunkSize( p_ck );
}
