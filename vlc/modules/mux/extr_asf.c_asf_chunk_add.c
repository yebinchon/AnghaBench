
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;


 int bo_addle_u16 (int *,int) ;
 int bo_addle_u32 (int *,int) ;

__attribute__((used)) static void asf_chunk_add( bo_t *bo,
                           int i_type, int i_len, int i_flags, int i_seq )
{
    bo_addle_u16( bo, i_type );
    bo_addle_u16( bo, i_len + 8 );
    bo_addle_u32( bo, i_seq );
    bo_addle_u16( bo, i_flags );
    bo_addle_u16( bo, i_len + 8 );
}
