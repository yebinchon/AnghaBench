
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int Oid ;


 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int hypertable_relid_lookup (int ) ;

Oid
ts_hypertable_relid(RangeVar *rv)
{
 return hypertable_relid_lookup(RangeVarGetRelid(rv, NoLock, 1));
}
