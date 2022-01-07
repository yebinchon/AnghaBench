
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* memchr (int const*,int,int) ;

__attribute__((used)) static const uint8_t * FLACStartcodeHelper(const uint8_t *p, const uint8_t *end)
{
    while( p && p < end )
    {
        if( (p = memchr(p, 0xFF, end - p)) )
        {
            if( end - p > 1 && (p[1] & 0xFE) == 0xF8 )
                return p;
            else
                p++;
        }
    }
    return ((void*)0);
}
