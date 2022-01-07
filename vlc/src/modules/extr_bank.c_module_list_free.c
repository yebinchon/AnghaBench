
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int free (int **) ;

void module_list_free (module_t **list)
{
    free (list);
}
