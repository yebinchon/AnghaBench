
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned gesture( unsigned i_pattern, unsigned i_num )
{
    return ( i_pattern >> ( i_num * 4 ) ) & 0xF;
}
