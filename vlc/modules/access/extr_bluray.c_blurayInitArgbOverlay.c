
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int blurayInitOverlay (int *,int,int,int) ;

__attribute__((used)) static void blurayInitArgbOverlay(demux_t *p_demux, int plane, int width, int height)
{
    blurayInitOverlay(p_demux, plane, width, height);
}
