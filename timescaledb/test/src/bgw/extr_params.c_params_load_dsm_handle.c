
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dsm_handle ;
struct TYPE_2__ {int handle; } ;
typedef int Relation ;
typedef int * HeapTuple ;
typedef int HeapScanDesc ;
typedef TYPE_1__ FormData_bgw_dsm_handle ;


 int Assert (int ) ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int *) ;
 int RowExclusiveLock ;
 int SnapshotSelf ;
 int get_dsm_handle_table_oid () ;
 int heap_beginscan (int ,int ,int ,int *) ;
 int heap_close (int ,int ) ;
 int * heap_copytuple (int *) ;
 int heap_endscan (int ) ;
 int heap_freetuple (int *) ;
 int * heap_getnext (int ,int ) ;
 int heap_open (int ,int ) ;

__attribute__((used)) static dsm_handle
params_load_dsm_handle()
{
 Relation rel;
 HeapScanDesc scan;
 HeapTuple tuple;
 FormData_bgw_dsm_handle *fd;
 dsm_handle handle;

 rel = heap_open(get_dsm_handle_table_oid(), RowExclusiveLock);
 scan = heap_beginscan(rel, SnapshotSelf, 0, ((void*)0));
 tuple = heap_getnext(scan, ForwardScanDirection);
 Assert(tuple != ((void*)0));
 tuple = heap_copytuple(tuple);
 fd = (FormData_bgw_dsm_handle *) GETSTRUCT(tuple);
 handle = fd->handle;
 heap_freetuple(tuple);
 heap_endscan(scan);
 heap_close(rel, RowExclusiveLock);

 return handle;
}
