
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int table_name; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef TYPE_2__ Hypertable ;


 int namestrcpy (int *,char const*) ;
 int ts_hypertable_update (TYPE_2__*) ;

int
ts_hypertable_set_name(Hypertable *ht, const char *newname)
{
 namestrcpy(&ht->fd.table_name, newname);

 return ts_hypertable_update(ht);
}
