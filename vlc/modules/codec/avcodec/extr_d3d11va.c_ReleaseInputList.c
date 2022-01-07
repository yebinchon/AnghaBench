
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; } ;
typedef TYPE_1__ input_list_t ;


 int free (int ) ;

__attribute__((used)) static void ReleaseInputList(input_list_t *p_list)
{
    free(p_list->list);
}
