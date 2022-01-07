
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_8__ {int num_filtered; int userid; int hcache; } ;
typedef TYPE_2__ TablespaceScanInfo ;
struct TYPE_10__ {int hypertable_id; } ;
struct TYPE_9__ {int main_table_relid; } ;
typedef int ScanFilterResult ;
typedef TYPE_3__ Hypertable ;
typedef TYPE_4__ FormData_tablespace ;


 int Assert (int) ;
 scalar_t__ GETSTRUCT (int ) ;
 int SCAN_EXCLUDE ;
 int SCAN_INCLUDE ;
 TYPE_3__* ts_hypertable_cache_get_entry_by_id (int ,int ) ;
 scalar_t__ ts_hypertable_has_privs_of (int ,int ) ;

__attribute__((used)) static ScanFilterResult
tablespace_tuple_owner_filter(TupleInfo *ti, void *data)
{
 TablespaceScanInfo *info = data;
 FormData_tablespace *form = (FormData_tablespace *) GETSTRUCT(ti->tuple);
 Hypertable *ht;

 ht = ts_hypertable_cache_get_entry_by_id(info->hcache, form->hypertable_id);

 Assert(((void*)0) != ht);

 if (ts_hypertable_has_privs_of(ht->main_table_relid, info->userid))
  return SCAN_INCLUDE;

 info->num_filtered++;

 return SCAN_EXCLUDE;
}
