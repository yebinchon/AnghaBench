
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int i_chunk_size; } ;
struct TYPE_5__ {TYPE_1__ common; } ;
typedef TYPE_2__ avi_chunk_t ;


 scalar_t__ __EVEN (int ) ;

__attribute__((used)) static uint64_t AVI_ChunkSize( const avi_chunk_t *p_ck )
{
    return __EVEN(p_ck->common.i_chunk_size) + 8;
}
