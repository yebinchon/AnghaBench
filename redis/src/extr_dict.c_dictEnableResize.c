
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dict_can_resize ;

void dictEnableResize(void) {
    dict_can_resize = 1;
}
