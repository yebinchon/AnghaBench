
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ME_DisplayItem ;



__attribute__((used)) static void ME_MarkRepaintEnd(ME_DisplayItem *para,
                              ME_DisplayItem **repaint_start,
                              ME_DisplayItem **repaint_end)
{
    if (!*repaint_start)
      *repaint_start = para;
    *repaint_end = para;
}
