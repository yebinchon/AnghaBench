
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_6__* tuple; int scanrel; int desc; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_9__ {int t_self; } ;
struct TYPE_8__ {int associated_schema_name; } ;
typedef int ScanTupleResult ;
typedef int HeapTuple ;
typedef TYPE_2__ FormData_hypertable ;
typedef int CatalogSecurityContext ;


 int INTERNAL_SCHEMA_NAME ;
 int SCAN_CONTINUE ;
 int heap_freetuple (int ) ;
 int hypertable_formdata_fill (TYPE_2__*,TYPE_6__*,int ) ;
 int hypertable_formdata_make_tuple (TYPE_2__*,int ) ;
 int namestrcpy (int *,int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_restore_user (int *) ;
 int ts_catalog_update_tid (int ,int *,int ) ;

__attribute__((used)) static ScanTupleResult
reset_associated_tuple_found(TupleInfo *ti, void *data)
{
 HeapTuple new_tuple;
 FormData_hypertable fd;
 CatalogSecurityContext sec_ctx;

 hypertable_formdata_fill(&fd, ti->tuple, ti->desc);

 namestrcpy(&fd.associated_schema_name, INTERNAL_SCHEMA_NAME);

 new_tuple = hypertable_formdata_make_tuple(&fd, ti->desc);
 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_update_tid(ti->scanrel, &ti->tuple->t_self, new_tuple);
 ts_catalog_restore_user(&sec_ctx);

 heap_freetuple(new_tuple);

 return SCAN_CONTINUE;
}
