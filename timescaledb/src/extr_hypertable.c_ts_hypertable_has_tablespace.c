
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Tablespaces ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Hypertable ;


 int * ts_tablespace_scan (int ) ;
 int ts_tablespaces_contain (int *,int ) ;

bool
ts_hypertable_has_tablespace(Hypertable *ht, Oid tspc_oid)
{
 Tablespaces *tspcs = ts_tablespace_scan(ht->fd.id);

 return ts_tablespaces_contain(tspcs, tspc_oid);
}
