
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t mbuf_offset ;

size_t
mbuf_data_size(void)
{
    return mbuf_offset;
}
