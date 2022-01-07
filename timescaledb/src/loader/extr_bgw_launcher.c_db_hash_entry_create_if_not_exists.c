
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state_transition_failures; int vxid; int state; int * db_scheduler_handle; } ;
typedef int Oid ;
typedef int HTAB ;
typedef TYPE_1__ DbHashEntry ;


 int ENABLED ;
 int HASH_ENTER ;
 int SetInvalidVirtualTransactionId (int ) ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;
 int scheduler_state_trans_enabled_to_allocated (TYPE_1__*) ;

__attribute__((used)) static DbHashEntry *
db_hash_entry_create_if_not_exists(HTAB *db_htab, Oid db_oid)
{
 DbHashEntry *db_he;
 bool found;

 db_he = (DbHashEntry *) hash_search(db_htab, &db_oid, HASH_ENTER, &found);
 if (!found)
 {
  db_he->db_scheduler_handle = ((void*)0);
  db_he->state = ENABLED;
  SetInvalidVirtualTransactionId(db_he->vxid);
  db_he->state_transition_failures = 0;
  scheduler_state_trans_enabled_to_allocated(db_he);
 }

 return db_he;
}
