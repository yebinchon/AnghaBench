
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int main_table_relid; } ;
struct TYPE_5__ {int hypertable_list; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef TYPE_2__ Hypertable ;


 int lappend_oid (int ,int ) ;

__attribute__((used)) static void
process_add_hypertable(ProcessUtilityArgs *args, Hypertable *ht)
{
 args->hypertable_list = lappend_oid(args->hypertable_list, ht->main_table_relid);
}
