
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;


 int GetUserId () ;
 int ts_hypertable_id_to_relid (int ) ;
 int ts_hypertable_permissions_check (int ,int ) ;

void
ts_hypertable_permissions_check_by_id(int32 hypertable_id)
{
 Oid table_relid = ts_hypertable_id_to_relid(hypertable_id);
 ts_hypertable_permissions_check(table_relid, GetUserId());
}
