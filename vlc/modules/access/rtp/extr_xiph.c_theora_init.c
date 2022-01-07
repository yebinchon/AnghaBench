
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 void* xiph_init (int) ;

void *theora_init (demux_t *demux)
{
    (void)demux;
    return xiph_init (0);
}
