
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int level; struct TYPE_6__* parent; } ;
typedef TYPE_1__* PDIR_RECORD ;


 int compare_directory_order (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int compare_path_table_order(PDIR_RECORD p, PDIR_RECORD q)
{
    int n = p->level - q->level;
    if (p == q)
        return 0;
    if (n == 0)
    {
        n = compare_path_table_order(p->parent, q->parent);
        if (n == 0)
            n = compare_directory_order(p, q);
    }
    return n;
}
