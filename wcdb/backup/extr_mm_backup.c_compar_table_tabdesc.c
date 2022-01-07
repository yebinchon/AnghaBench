
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int table; } ;
typedef TYPE_1__ mm_backup_tabdesc ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int compar_table_tabdesc(const void *key, const void *value)
{
    return strcmp((const char *) key,
                  ((const mm_backup_tabdesc *) value)->table);
}
