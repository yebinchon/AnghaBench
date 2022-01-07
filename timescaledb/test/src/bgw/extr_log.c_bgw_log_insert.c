
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Oid ;


 int RowExclusiveLock ;
 int bgw_log_insert_relation (int ,char*) ;
 int get_namespace_oid (char*,int) ;
 int get_relname_relid (char*,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;

__attribute__((used)) static void
bgw_log_insert(char *msg)
{
 Relation rel;
 Oid log_oid = get_relname_relid("bgw_log", get_namespace_oid("public", 0));

 rel = heap_open(log_oid, RowExclusiveLock);
 bgw_log_insert_relation(rel, msg);
 heap_close(rel, RowExclusiveLock);
}
