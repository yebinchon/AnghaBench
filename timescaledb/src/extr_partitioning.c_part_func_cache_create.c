
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_4__ {void* coerce_funcid; int * tce; void* argtype; } ;
typedef TYPE_1__ PartFuncCache ;
typedef void* Oid ;
typedef int MemoryContext ;


 TYPE_1__* MemoryContextAlloc (int ,int) ;

__attribute__((used)) static PartFuncCache *
part_func_cache_create(Oid argtype, TypeCacheEntry *tce, Oid coerce_funcid, MemoryContext mcxt)
{
 PartFuncCache *pfc;

 pfc = MemoryContextAlloc(mcxt, sizeof(PartFuncCache));
 pfc->argtype = argtype;
 pfc->tce = tce;
 pfc->coerce_funcid = coerce_funcid;

 return pfc;
}
