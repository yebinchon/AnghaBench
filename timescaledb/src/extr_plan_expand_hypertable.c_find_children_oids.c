
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int main_table_relid; } ;
typedef int List ;
typedef int LOCKMODE ;
typedef int HypertableRestrictInfo ;
typedef TYPE_1__ Hypertable ;


 int * find_inheritance_children (int ,int ) ;
 int * ts_hypertable_restrict_info_get_chunk_oids (int *,TYPE_1__*,int ) ;
 int ts_hypertable_restrict_info_has_restrictions (int *) ;

__attribute__((used)) static List *
find_children_oids(HypertableRestrictInfo *hri, Hypertable *ht, LOCKMODE lockmode)
{




 if (!ts_hypertable_restrict_info_has_restrictions(hri))
  return find_inheritance_children(ht->main_table_relid, lockmode);







 return ts_hypertable_restrict_info_get_chunk_oids(hri, ht, lockmode);
}
