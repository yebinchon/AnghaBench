
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* first; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ FDSC ;


 int MSDOS_NAME ;
 int strncmp (int ,char*,int ) ;

FDSC **file_cd(FDSC ** curr, char *fixed)
{
    FDSC **walk;

    if (!curr || !*curr)
 return ((void*)0);
    for (walk = curr; *walk; walk = &(*walk)->next)
 if (!strncmp((*walk)->name, fixed, MSDOS_NAME) && (*walk)->first)
     return &(*walk)->first;
    return ((void*)0);
}
