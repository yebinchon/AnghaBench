
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screenshooter {int dummy; } ;



__attribute__((used)) static void screenshooter_done_cb(void *data,
                                  struct screenshooter *screenshooter)
{
    bool *done = data;

    *done = 1;
    (void) screenshooter;
}
