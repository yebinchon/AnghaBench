
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int Datum ;
typedef int CatalogSecurityContext ;


 int Anum_dimension_id ;
 int Assert (int) ;
 int DatumGetInt32 (int ) ;
 int SCAN_CONTINUE ;
 int heap_getattr (int ,int ,int ,int*) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;
 int ts_dimension_slice_delete_by_dimension_id (int ,int) ;

__attribute__((used)) static ScanTupleResult
dimension_tuple_delete(TupleInfo *ti, void *data)
{
 CatalogSecurityContext sec_ctx;
 bool isnull;
 Datum dimension_id = heap_getattr(ti->tuple, Anum_dimension_id, ti->desc, &isnull);
 bool *delete_slices = data;

 Assert(!isnull);


 if (((void*)0) != delete_slices && *delete_slices)
  ts_dimension_slice_delete_by_dimension_id(DatumGetInt32(dimension_id), 0);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
