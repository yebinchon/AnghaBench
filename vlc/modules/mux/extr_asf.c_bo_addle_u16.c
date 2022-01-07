
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bo_t ;


 int bo_add_u8 (int *,int) ;

__attribute__((used)) static void bo_addle_u16( bo_t *p_bo, uint16_t i )
{
    bo_add_u8( p_bo, i &0xff );
    bo_add_u8( p_bo, ( ( i >> 8) &0xff ) );
}
