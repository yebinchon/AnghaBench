
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int module_config_t ;
struct TYPE_2__ {scalar_t__ count; int ** list; } ;


 TYPE_1__ config ;
 int free (int **) ;

void config_UnsortConfig (void)
{
    module_config_t **clist;

    clist = config.list;
    config.list = ((void*)0);
    config.count = 0;

    free (clist);
}
