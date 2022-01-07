
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_window_t ;


 int vout_window_ReportSize (int *,unsigned int,unsigned int) ;

__attribute__((used)) static void WindowResize(void *opaque, unsigned width, unsigned height)
{
    vout_window_t *window = opaque;
    vout_window_ReportSize(window, width, height);
}
