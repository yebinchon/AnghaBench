
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relrowsecurity; int relforcerowsecurity; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;

bool
ts_has_row_security(Oid relid)
{
 HeapTuple tuple;
 Form_pg_class classform;
 bool relrowsecurity;
 bool relforcerowsecurity;


 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relid %d", relid);
 classform = (Form_pg_class) GETSTRUCT(tuple);
 relrowsecurity = classform->relrowsecurity;
 relforcerowsecurity = classform->relforcerowsecurity;
 ReleaseSysCache(tuple);
 return (relrowsecurity || relforcerowsecurity);
}
