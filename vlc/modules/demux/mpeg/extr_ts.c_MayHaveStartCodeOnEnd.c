
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int) ;

__attribute__((used)) static bool MayHaveStartCodeOnEnd( const uint8_t *p_buf, size_t i_buf )
{
    assert(i_buf > 2);
    return !( *(--p_buf) > 1 || *(--p_buf) > 0 || *(--p_buf) > 0 );
}
