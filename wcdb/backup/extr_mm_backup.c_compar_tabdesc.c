
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef TYPE_1__ mm_backup_tabdesc ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compar_tabdesc(const void *a, const void *b)
{
    return strcmp(((const mm_backup_tabdesc *) a)->table,
                  ((const mm_backup_tabdesc *) b)->table);
}
