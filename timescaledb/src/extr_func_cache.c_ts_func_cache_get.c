
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcinfo; } ;
typedef int Oid ;
typedef int FuncInfo ;
typedef TYPE_1__ FuncEntry ;


 int HASH_FIND ;
 int * func_hash ;
 TYPE_1__* hash_search (int *,int *,int ,int *) ;
 int initialize_func_info () ;

FuncInfo *
ts_func_cache_get(Oid funcid)
{
 FuncEntry *entry;

 if (((void*)0) == func_hash)
  initialize_func_info();

 entry = hash_search(func_hash, &funcid, HASH_FIND, ((void*)0));

 return (((void*)0) == entry) ? ((void*)0) : entry->funcinfo;
}
