
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ids; int data; } ;
typedef TYPE_1__ BS_LIST ;


 int free (int ) ;

void bs_list_free(BS_LIST *list)
{

    free(list->data);
    free(list->ids);
}
