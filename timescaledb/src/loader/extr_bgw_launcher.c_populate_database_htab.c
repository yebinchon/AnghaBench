
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ datistemplate; int datallowconn; } ;
typedef int Relation ;
typedef int HeapTuple ;
typedef int HeapScanDesc ;
typedef int HTAB ;
typedef TYPE_1__* Form_pg_database ;


 int AccessShareLock ;
 int CommitTransactionCommand () ;
 int DatabaseRelationId ;
 int ForwardScanDirection ;
 int GETSTRUCT (int ) ;
 int GetTransactionSnapshot () ;
 int HeapTupleGetOid (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int StartTransactionCommand () ;
 int db_hash_entry_create_if_not_exists (int *,int ) ;
 int heap_beginscan_catalog (int ,int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_endscan (int ) ;
 int heap_getnext (int ,int ) ;
 int heap_open (int ,int ) ;

__attribute__((used)) static void
populate_database_htab(HTAB *db_htab)
{
 Relation rel;
 HeapScanDesc scan;
 HeapTuple tup;





 StartTransactionCommand();
 (void) GetTransactionSnapshot();

 rel = heap_open(DatabaseRelationId, AccessShareLock);
 scan = heap_beginscan_catalog(rel, 0, ((void*)0));

 while (HeapTupleIsValid(tup = heap_getnext(scan, ForwardScanDirection)))
 {
  Form_pg_database pgdb = (Form_pg_database) GETSTRUCT(tup);

  if (!pgdb->datallowconn || pgdb->datistemplate)
   continue;


  db_hash_entry_create_if_not_exists(db_htab, HeapTupleGetOid(tup));
 }
 heap_endscan(scan);
 heap_close(rel, AccessShareLock);

 CommitTransactionCommand();
}
