
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ regproc ;
typedef scalar_t__ (* proc_filter ) (TYPE_2__*,void*) ;
struct TYPE_10__ {int n_members; TYPE_1__** members; } ;
struct TYPE_9__ {scalar_t__ pronamespace; scalar_t__ prorettype; } ;
struct TYPE_8__ {int tuple; } ;
typedef scalar_t__ Oid ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef TYPE_4__ CatCList ;


 int CStringGetDatum (char const*) ;
 int GETSTRUCT (int *) ;
 scalar_t__ HeapTupleGetOid (int *) ;
 scalar_t__ InvalidOid ;
 scalar_t__ LookupExplicitNamespace (char const*,int) ;
 int PROCNAMEARGSNSP ;
 int ReleaseSysCacheList (TYPE_4__*) ;
 TYPE_4__* SearchSysCacheList1 (int ,int ) ;

Oid
ts_lookup_proc_filtered(const char *schema, const char *funcname, Oid *rettype, proc_filter filter,
      void *filter_arg)
{
 Oid namespace_oid = LookupExplicitNamespace(schema, 0);
 regproc func = InvalidOid;
 CatCList *catlist;
 int i;






 catlist = SearchSysCacheList1(PROCNAMEARGSNSP, CStringGetDatum(funcname));

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple proctup = &catlist->members[i]->tuple;
  Form_pg_proc procform = (Form_pg_proc) GETSTRUCT(proctup);

  if (procform->pronamespace == namespace_oid &&
   (filter == ((void*)0) || filter(procform, filter_arg)))
  {
   if (rettype)
    *rettype = procform->prorettype;

   func = HeapTupleGetOid(proctup);
   break;
  }
 }

 ReleaseSysCacheList(catlist);

 return func;
}
