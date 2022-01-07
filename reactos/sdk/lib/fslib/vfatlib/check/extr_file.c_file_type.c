
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef int FD_TYPE ;
typedef TYPE_1__ FDSC ;


 int fdt_none ;
 TYPE_1__** file_find (TYPE_1__**,char*) ;

FD_TYPE file_type(FDSC ** curr, char *fixed)
{
    FDSC **this;

    if ((this = file_find(curr, fixed)))
 return (*this)->type;
    return fdt_none;
}
