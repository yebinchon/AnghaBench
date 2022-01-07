
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type_oid; int typelen; int typebyval; } ;
typedef TYPE_1__ TypeInfoCache ;
struct TYPE_7__ {scalar_t__ type_oid; int is_null; int datum; } ;
typedef TYPE_2__ PolyDatum ;


 int PointerGetDatum (int *) ;
 int datumCopy (int ,int ,int ) ;
 int get_typlenbyval (scalar_t__,int *,int *) ;

__attribute__((used)) inline static void
typeinfocache_polydatumcopy(TypeInfoCache *tic, PolyDatum input, PolyDatum *output)
{
 if (tic->type_oid != input.type_oid)
 {
  tic->type_oid = input.type_oid;
  get_typlenbyval(tic->type_oid, &tic->typelen, &tic->typebyval);
 }
 *output = input;
 if (!input.is_null)
 {
  output->datum = datumCopy(input.datum, tic->typebyval, tic->typelen);
  output->is_null = 0;
 }
 else
 {
  output->datum = PointerGetDatum(((void*)0));
  output->is_null = 1;
 }
}
