
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Valid; } ;
typedef TYPE_1__ sys_mbox_t ;



int sys_mbox_valid(sys_mbox_t *mbox)
{
    return mbox->Valid;
}
