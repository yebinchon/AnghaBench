
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i_channel; } ;
typedef TYPE_2__ subpicture_t ;
typedef int ssize_t ;
struct TYPE_7__ {scalar_t__ sys; } ;
struct TYPE_9__ {TYPE_1__ owner; } ;
typedef TYPE_3__ filter_t ;


 TYPE_2__* subpicture_New (int *) ;

__attribute__((used)) static subpicture_t *sub_new_buffer(filter_t *filter)
{
    ssize_t channel = *(ssize_t *)filter->owner.sys;

    subpicture_t *subpicture = subpicture_New(((void*)0));
    if (subpicture)
        subpicture->i_channel = channel;
    return subpicture;
}
