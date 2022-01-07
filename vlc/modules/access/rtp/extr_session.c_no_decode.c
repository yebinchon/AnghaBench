
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;
typedef int block_t ;


 int block_Release (int *) ;

__attribute__((used)) static void no_decode (demux_t *demux, void *opaque, block_t *block)
{
    (void)demux; (void)opaque;
    block_Release (block);
}
