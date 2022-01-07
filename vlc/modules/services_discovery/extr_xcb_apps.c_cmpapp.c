
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xcb_window_t ;



__attribute__((used)) static int cmpapp (const void *a, const void *b)
{
    xcb_window_t wa = *(xcb_window_t *)a;
    xcb_window_t wb = *(xcb_window_t *)b;

    if (wa > wb)
        return 1;
    if (wa < wb)
        return -1;
    return 0;
}
