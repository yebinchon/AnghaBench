
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cmp_func_cache; int cmp_type_cache; int value_type_cache; } ;
typedef TYPE_2__ TransCache ;
struct TYPE_8__ {TYPE_1__* flinfo; } ;
struct TYPE_6__ {scalar_t__ fn_extra; int fn_mcxt; } ;
typedef TYPE_3__* FunctionCallInfo ;


 scalar_t__ MemoryContextAlloc (int ,int) ;
 int cmpfunccache_init (int *) ;
 int typeinfocache_init (int *) ;

__attribute__((used)) static TransCache *
transcache_get(FunctionCallInfo fcinfo)
{
 TransCache *my_extra = (TransCache *) fcinfo->flinfo->fn_extra;

 if (my_extra == ((void*)0))
 {
  fcinfo->flinfo->fn_extra = MemoryContextAlloc(fcinfo->flinfo->fn_mcxt, sizeof(TransCache));
  my_extra = (TransCache *) fcinfo->flinfo->fn_extra;
  typeinfocache_init(&my_extra->value_type_cache);
  typeinfocache_init(&my_extra->cmp_type_cache);
  cmpfunccache_init(&my_extra->cmp_func_cache);
 }
 return my_extra;
}
