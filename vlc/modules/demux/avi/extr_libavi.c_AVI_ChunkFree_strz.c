
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int avi_chunk_t ;
struct TYPE_2__ {int p_str; int p_type; } ;
typedef TYPE_1__ avi_chunk_STRING_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void AVI_ChunkFree_strz( avi_chunk_t *p_chk )
{
    avi_chunk_STRING_t *p_strz = (avi_chunk_STRING_t*)p_chk;
    FREENULL( p_strz->p_type );
    FREENULL( p_strz->p_str );
}
