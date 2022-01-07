
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
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int format_type_be (int ) ;

__attribute__((used)) static Oid
get_cast_func(Oid source, Oid target)
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

 if (!OidIsValid(result))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("could not find cast from %s to %s",
      format_type_be(source),
      format_type_be(target))));

 return result;
}
