
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


 int Anum_dimension_slice_id ;
 int Assert (int) ;
 int DatumGetInt32 (int ) ;
 int SCAN_CONTINUE ;
 int heap_getattr (int ,int ,int ,int*) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;
 int ts_chunk_constraint_delete_by_dimension_slice_id (int ) ;

__attribute__((used)) static ScanTupleResult
dimension_slice_tuple_delete(TupleInfo *ti, void *data)
{
 bool isnull;
 Datum dimension_slice_id = heap_getattr(ti->tuple, Anum_dimension_slice_id, ti->desc, &isnull);
 bool *delete_constraints = data;
 CatalogSecurityContext sec_ctx;

 Assert(!isnull);


 if (((void*)0) != delete_constraints && *delete_constraints)
  ts_chunk_constraint_delete_by_dimension_slice_id(DatumGetInt32(dimension_slice_id));

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
