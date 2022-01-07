
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relowner; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERRCODE_UNDEFINED_TABLE ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

Oid
ts_rel_get_owner(Oid relid)
{
 HeapTuple tuple;
 Oid ownerid;

 if (!OidIsValid(relid))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("unable to get owner for relation with OID %u: invalid OID", relid)));

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));

 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_TABLE),
     errmsg("unable to get owner for relation with OID %u: does not exist", relid)));

 ownerid = ((Form_pg_class) GETSTRUCT(tuple))->relowner;

 ReleaseSysCache(tuple);

 return ownerid;
}
