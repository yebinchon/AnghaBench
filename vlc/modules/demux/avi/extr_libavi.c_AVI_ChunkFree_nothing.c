
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int avi_chunk_t ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static void AVI_ChunkFree_nothing( avi_chunk_t *p_chk )
{
    VLC_UNUSED( p_chk );
}
