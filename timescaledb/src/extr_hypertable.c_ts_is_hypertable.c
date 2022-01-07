
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ InvalidOid ;
 int OidIsValid (int ) ;
 scalar_t__ hypertable_relid_lookup (int ) ;

bool
ts_is_hypertable(Oid relid)
{
 if (!OidIsValid(relid))
  return 0;
 return hypertable_relid_lookup(relid) != InvalidOid;
}
