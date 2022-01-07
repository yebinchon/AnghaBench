
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; int tuple; int scanrel; } ;
typedef TYPE_1__ TupleInfo ;
struct TYPE_5__ {scalar_t__ stopcount; int database_info; } ;
typedef TYPE_2__ TablespaceScanInfo ;
typedef int ScanTupleResult ;
typedef int CatalogSecurityContext ;


 int SCAN_CONTINUE ;
 int SCAN_DONE ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_delete_only (int ,int ) ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static ScanTupleResult
tablespace_tuple_delete(TupleInfo *ti, void *data)
{
 TablespaceScanInfo *info = data;
 CatalogSecurityContext sec_ctx;

 ts_catalog_database_info_become_owner(info->database_info, &sec_ctx);
 ts_catalog_delete_only(ti->scanrel, ti->tuple);
 ts_catalog_restore_user(&sec_ctx);

 return (info->stopcount == 0 || ti->count < info->stopcount) ? SCAN_CONTINUE : SCAN_DONE;
}
