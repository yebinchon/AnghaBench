
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_buffer_t ;
typedef int uint64_t ;


 int var_buffer_add32 (int *,int) ;

void var_buffer_add64( var_buffer_t *p_buf, uint64_t i_long )
{
    var_buffer_add32( p_buf, i_long&0xffffffff );
    var_buffer_add32( p_buf, ( i_long >> 32 )&0xffffffff );
}
