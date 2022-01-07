
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ SeafBranch ;


 int g_free (TYPE_1__*) ;

void
seaf_branch_free (SeafBranch *branch)
{
    if (branch == ((void*)0)) return;
    g_free (branch->name);
    g_free (branch);
}
