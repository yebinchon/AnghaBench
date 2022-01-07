
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_tablespaces; TYPE_1__* tablespaces; } ;
typedef TYPE_2__ Tablespaces ;
struct TYPE_4__ {scalar_t__ tablespace_oid; } ;
typedef scalar_t__ Oid ;



bool
ts_tablespaces_contain(Tablespaces *tspcs, Oid tspc_oid)
{
 int i;

 for (i = 0; i < tspcs->num_tablespaces; i++)
  if (tspc_oid == tspcs->tablespaces[i].tablespace_oid)
   return 1;

 return 0;
}
