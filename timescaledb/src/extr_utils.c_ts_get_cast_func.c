
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int castfunc; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_cast ;


 int CASTSOURCETARGET ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;

Oid
ts_get_cast_func(Oid source, Oid target)
{
 Oid result = InvalidOid;
 HeapTuple casttup;

 casttup = SearchSysCache2(CASTSOURCETARGET, ObjectIdGetDatum(source), ObjectIdGetDatum(target));
 if (HeapTupleIsValid(casttup))
 {
  Form_pg_cast castform = (Form_pg_cast) GETSTRUCT(casttup);

  result = castform->castfunc;
  ReleaseSysCache(casttup);
 }

 return result;
}
