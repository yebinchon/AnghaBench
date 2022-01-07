
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int typbyval; int typlen; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Oid ;
typedef int Datum ;
typedef int Const ;


 int InvalidOid ;
 int gapfill_internal_get_datum (int ,int ) ;
 TYPE_1__* lookup_type_cache (int ,int ) ;
 int * makeConst (int ,int,int ,int ,int ,int,int ) ;

__attribute__((used)) static Const *
make_const_value_for_gapfill_internal(Oid typid, int64 value)
{
 TypeCacheEntry *tce = lookup_type_cache(typid, 0);
 Datum d = gapfill_internal_get_datum(value, typid);

 return makeConst(typid, -1, InvalidOid, tce->typlen, d, 0, tce->typbyval);
}
