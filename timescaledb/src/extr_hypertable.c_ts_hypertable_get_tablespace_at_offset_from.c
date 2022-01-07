
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
typedef int int16 ;
struct TYPE_5__ {int num_tablespaces; TYPE_2__* tablespaces; } ;
typedef TYPE_1__ Tablespaces ;
struct TYPE_6__ {scalar_t__ tablespace_oid; } ;
typedef TYPE_2__ Tablespace ;
typedef scalar_t__ Oid ;


 TYPE_1__* ts_tablespace_scan (int ) ;

Tablespace *
ts_hypertable_get_tablespace_at_offset_from(int32 hypertable_id, Oid tablespace_oid, int16 offset)
{
 Tablespaces *tspcs = ts_tablespace_scan(hypertable_id);
 int i = 0;

 if (((void*)0) == tspcs || tspcs->num_tablespaces == 0)
  return ((void*)0);

 for (i = 0; i < tspcs->num_tablespaces; i++)
 {
  if (tablespace_oid == tspcs->tablespaces[i].tablespace_oid)
   return &tspcs->tablespaces[(i + offset) % tspcs->num_tablespaces];
 }

 return ((void*)0);
}
