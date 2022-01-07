
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_buffer_t ;
typedef int uint32_t ;


 int var_buffer_add16 (int *,int) ;

void var_buffer_add32( var_buffer_t *p_buf, uint32_t i_dword )
{
    var_buffer_add16( p_buf, i_dword&0xffff );
    var_buffer_add16( p_buf, ( i_dword >> 16 )&0xffff );
}
