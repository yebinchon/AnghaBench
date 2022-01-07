
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef char uint16_t ;
typedef int bo_t ;


 int bo_addle_u16 (int *,char) ;

__attribute__((used)) static void bo_addle_str16_nosize( bo_t *bo, const char *str )
{
    for( ;; )
    {
        uint16_t c = (uint8_t)*str++;
        bo_addle_u16( bo, c );
        if( c == '\0' ) break;
    }
}
