
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int HeapTuple ;


 int HeapTupleGetOid (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OPERNAMENSP ;
 int ObjectIdGetDatum (int ) ;
 int PointerGetDatum (char const*) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache4 (int ,int ,int ,int ,int ) ;

Oid
ts_get_operator(const char *name, Oid namespace, Oid left, Oid right)
{
 HeapTuple tup;
 Oid opoid = InvalidOid;

 tup = SearchSysCache4(OPERNAMENSP,
        PointerGetDatum(name),
        ObjectIdGetDatum(left),
        ObjectIdGetDatum(right),
        ObjectIdGetDatum(namespace));
 if (HeapTupleIsValid(tup))
 {
  opoid = HeapTupleGetOid(tup);
  ReleaseSysCache(tup);
 }

 return opoid;
}
