
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_type; } ;
typedef TYPE_1__ input_item_t ;


 scalar_t__ ITEM_TYPE_DIRECTORY ;

__attribute__((used)) static int rdh_compar_type(input_item_t *p1, input_item_t *p2)
{
    if (p1->i_type != p2->i_type)
    {
        if (p1->i_type == ITEM_TYPE_DIRECTORY)
            return -1;
        if (p2->i_type == ITEM_TYPE_DIRECTORY)
            return 1;
    }
    return 0;
}
