
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int main_table_relid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ Hypertable ;
typedef int Chunk ;


 int GetUserIdAndSecContext (scalar_t__*,int*) ;
 int SECURITY_LOCAL_USERID_CHANGE ;
 int SetUserIdAndSecContext (scalar_t__,int) ;
 int create_trigger_handler ;
 int for_each_trigger (int ,int ,int *) ;
 scalar_t__ ts_rel_get_owner (int ) ;

void
ts_trigger_create_all_on_chunk(Hypertable *ht, Chunk *chunk)
{
 int sec_ctx;
 Oid saved_uid;
 Oid owner = ts_rel_get_owner(ht->main_table_relid);

 GetUserIdAndSecContext(&saved_uid, &sec_ctx);

 if (saved_uid != owner)
  SetUserIdAndSecContext(owner, sec_ctx | SECURITY_LOCAL_USERID_CHANGE);

 for_each_trigger(ht->main_table_relid, create_trigger_handler, chunk);

 if (saved_uid != owner)
  SetUserIdAndSecContext(saved_uid, sec_ctx);
}
