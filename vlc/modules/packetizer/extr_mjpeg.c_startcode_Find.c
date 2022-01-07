
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* memchr (int const*,int,int) ;

__attribute__((used)) static inline const uint8_t * startcode_Find( const uint8_t *p, const uint8_t *end )
{
    while( p + 3 < end )
    {
        p = memchr( p, 0xFF, end - p );
        if( !p || end - p < 4 )
            break;
        if( p[1] == 0xD8 && p[2] == 0xFF && (p[3] & 0xE0) == 0xE0 )
            return p;
        p++;
    }
    return ((void*)0);
}
