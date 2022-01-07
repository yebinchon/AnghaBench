
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int DEMUX_GET_SEEKPOINT ;
 scalar_t__ demux_Control (int *,int ,int*) ;

int demux_GetSeekpoint( demux_t *p_demux )
{
    int seekpoint;

    if (demux_Control(p_demux, DEMUX_GET_SEEKPOINT, &seekpoint))
        seekpoint = 0;
    return seekpoint;
}
