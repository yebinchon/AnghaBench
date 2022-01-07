
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {scalar_t__ relpersistence; int reltoastrelid; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int MultiXactId ;
typedef int List ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int CheckTableForSerializableConflictIn (TYPE_2__*) ;
 int ERROR ;
 int GetOldestMultiXactId () ;
 int * NIL ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int REINDEX_REL_PROCESS_TOAST ;
 scalar_t__ RELPERSISTENCE_UNLOGGED ;
 int RecentXmin ;
 int RelationSetNewRelfilenode (TYPE_2__*,scalar_t__,int ,int ) ;
 int elog (int ,char*) ;
 int heap_close (TYPE_2__*,int ) ;
 int * heap_truncate_find_FKs (int ) ;
 int list_make1_oid (int ) ;
 int reindex_relation (int ,int ,int ) ;
 TYPE_2__* relation_open (int ,int ) ;

__attribute__((used)) static void
truncate_relation(Oid table_oid)
{
 List *fks = heap_truncate_find_FKs(list_make1_oid(table_oid));


 Relation rel = relation_open(table_oid, AccessExclusiveLock);
 MultiXactId minmulti;
 Oid toast_relid;


 if (fks != NIL)
  elog(ERROR, "found a FK into a chunk while truncating");

 CheckTableForSerializableConflictIn(rel);

 minmulti = GetOldestMultiXactId();

 RelationSetNewRelfilenode(rel, rel->rd_rel->relpersistence, RecentXmin, minmulti);

 toast_relid = rel->rd_rel->reltoastrelid;

 heap_close(rel, NoLock);

 if (OidIsValid(toast_relid))
 {
  rel = relation_open(toast_relid, AccessExclusiveLock);
  RelationSetNewRelfilenode(rel, rel->rd_rel->relpersistence, RecentXmin, minmulti);
  Assert(rel->rd_rel->relpersistence != RELPERSISTENCE_UNLOGGED);
  heap_close(rel, NoLock);
 }

 reindex_relation(table_oid, REINDEX_REL_PROCESS_TOAST, 0);
}
