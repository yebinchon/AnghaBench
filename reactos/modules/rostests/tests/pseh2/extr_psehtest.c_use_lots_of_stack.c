
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
use_lots_of_stack(void)
{
    int i;
    volatile int arr[512];
    for (i = 0; i < 512; i++)
        arr[i] = 123;
    (void)arr;
}
