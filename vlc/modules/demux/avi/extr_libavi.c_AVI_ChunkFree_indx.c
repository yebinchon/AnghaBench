
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int avi_chunk_t ;
struct TYPE_3__ {int super; int field; int std; } ;
struct TYPE_4__ {TYPE_1__ idx; } ;
typedef TYPE_2__ avi_chunk_indx_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void AVI_ChunkFree_indx( avi_chunk_t *p_chk )
{
    avi_chunk_indx_t *p_indx = (avi_chunk_indx_t*)p_chk;

    FREENULL( p_indx->idx.std );
    FREENULL( p_indx->idx.field );
    FREENULL( p_indx->idx.super );
}
