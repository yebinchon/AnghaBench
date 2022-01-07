
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_bucketing_func; } ;
typedef int Oid ;
typedef TYPE_1__ FuncInfo ;


 TYPE_1__* ts_func_cache_get (int ) ;

FuncInfo *
ts_func_cache_get_bucketing_func(Oid funcid)
{
 FuncInfo *finfo = ts_func_cache_get(funcid);

 if (((void*)0) == finfo)
  return ((void*)0);

 return finfo->is_bucketing_func ? finfo : ((void*)0);
}
