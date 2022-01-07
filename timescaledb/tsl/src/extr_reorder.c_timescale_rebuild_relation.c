
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_8__ {TYPE_1__* rd_rel; } ;
struct TYPE_7__ {char relpersistence; int reltablespace; } ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef int MultiXactId ;
typedef int List ;


 int ExclusiveLock ;
 int NoLock ;
 scalar_t__ OidIsValid (int ) ;
 int RelationGetRelid (TYPE_2__*) ;
 int copy_heap_data (int ,int ,int ,int,int*,int *,int *) ;
 int finish_heap_swaps (int ,int ,int *,int *,int,int,int ,int ,int ) ;
 int heap_close (TYPE_2__*,int ) ;
 int make_new_heap (int ,int ,char,int ) ;
 int mark_index_clustered (TYPE_2__*,int ,int) ;
 int * ts_chunk_index_duplicate (int ,int ,int **,int ) ;

__attribute__((used)) static void
timescale_rebuild_relation(Relation OldHeap, Oid indexOid, bool verbose, Oid wait_id,
         Oid destination_tablespace, Oid index_tablespace)
{
 Oid tableOid = RelationGetRelid(OldHeap);
 Oid tableSpace = OidIsValid(destination_tablespace) ? destination_tablespace :
                OldHeap->rd_rel->reltablespace;
 Oid OIDNewHeap;
 List *old_index_oids;
 List *new_index_oids;
 char relpersistence;
 bool swap_toast_by_content;
 TransactionId frozenXid;
 MultiXactId cutoffMulti;


 mark_index_clustered(OldHeap, indexOid, 1);


 relpersistence = OldHeap->rd_rel->relpersistence;


 heap_close(OldHeap, NoLock);


 OIDNewHeap = make_new_heap(tableOid, tableSpace, relpersistence, ExclusiveLock);


 copy_heap_data(OIDNewHeap,
       tableOid,
       indexOid,
       verbose,
       &swap_toast_by_content,
       &frozenXid,
       &cutoffMulti);


 new_index_oids =
  ts_chunk_index_duplicate(tableOid, OIDNewHeap, &old_index_oids, index_tablespace);





 finish_heap_swaps(tableOid,
       OIDNewHeap,
       old_index_oids,
       new_index_oids,
       swap_toast_by_content,
       1,
       frozenXid,
       cutoffMulti,
       wait_id);
}
