
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;



__attribute__((used)) static int DemuxNoOp( demux_t *demux )
{
    (void) demux;
    return 0;
}
