
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entry; scalar_t__ i_entry_max; scalar_t__ i_entry_count; } ;
struct TYPE_5__ {TYPE_1__ idx1; } ;
typedef TYPE_2__ avi_chunk_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void AVI_ChunkFree_idx1( avi_chunk_t *p_chk )
{
    p_chk->idx1.i_entry_count = 0;
    p_chk->idx1.i_entry_max = 0;
    FREENULL( p_chk->idx1.entry );
}
