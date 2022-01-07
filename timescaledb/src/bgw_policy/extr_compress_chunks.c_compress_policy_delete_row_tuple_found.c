
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; int scanrel; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int CatalogSecurityContext ;


 int SCAN_CONTINUE ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_delete (int ,int ) ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static ScanTupleResult
compress_policy_delete_row_tuple_found(TupleInfo *ti, void *const data)
{
 CatalogSecurityContext sec_ctx;

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_delete(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return SCAN_CONTINUE;
}
