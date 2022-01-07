
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef int Datum ;


 int Anum_pg_class_reloptions ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,int ) ;
 int * untransformRelOptions (int ) ;

__attribute__((used)) static List *
get_reloptions(Oid relid)
{
 HeapTuple tuple;
 Datum datum;
 bool isnull;
 List *options;

 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relid);

 datum = SysCacheGetAttr(RELOID, tuple, Anum_pg_class_reloptions, &isnull);

 options = untransformRelOptions(datum);

 ReleaseSysCache(tuple);

 return options;
}
