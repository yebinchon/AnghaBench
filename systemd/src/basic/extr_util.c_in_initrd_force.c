
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int saved_in_initrd ;

void in_initrd_force(bool value) {
        saved_in_initrd = value;
}
