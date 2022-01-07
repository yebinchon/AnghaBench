
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;
typedef int block_t ;



__attribute__((used)) static block_t *Equals( filter_t *p_filter, block_t *p_buf )
{
    (void) p_filter;
    return p_buf;
}
