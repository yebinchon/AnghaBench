
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extension_on_cd; int name_on_cd; } ;
typedef TYPE_1__* PDIR_RECORD ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_directory_order(PDIR_RECORD p, PDIR_RECORD q)
{
    int n = strcmp(p->name_on_cd, q->name_on_cd);
    if (n == 0)
        n = strcmp(p->extension_on_cd, q->extension_on_cd);
    return n;
}
