
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_buffer_t ;
typedef int uint16_t ;


 int var_buffer_add8 (int *,int) ;

void var_buffer_add16( var_buffer_t *p_buf, uint16_t i_word )
{
    var_buffer_add8( p_buf, i_word&0xff );
    var_buffer_add8( p_buf, ( i_word >> 8 )&0xff );
}
