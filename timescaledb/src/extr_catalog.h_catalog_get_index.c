
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tables; } ;
struct TYPE_4__ {int * index_ids; } ;
typedef int Oid ;
typedef size_t CatalogTable ;
typedef TYPE_2__ Catalog ;


 int INVALID_INDEXID ;
 int InvalidOid ;

__attribute__((used)) static inline Oid
catalog_get_index(Catalog *catalog, CatalogTable tableid, int indexid)
{
 return (indexid == INVALID_INDEXID) ? InvalidOid : catalog->tables[tableid].index_ids[indexid];
}
