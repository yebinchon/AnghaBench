
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clz (unsigned int const) ;

__attribute__((used)) static int vlc_ceil_log2( const unsigned int val )
{
    int n = 31 - clz(val);
    if ((1U << n) != val)
        n++;

    return n;
}
