
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int DEMUX_GET_TITLE ;
 scalar_t__ demux_Control (int *,int ,int*) ;

int demux_GetTitle( demux_t *p_demux )
{
    int title;

    if (demux_Control(p_demux, DEMUX_GET_TITLE, &title))
        title = 0;
    return title;
}
