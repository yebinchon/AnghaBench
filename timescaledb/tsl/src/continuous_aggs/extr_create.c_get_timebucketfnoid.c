
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int n_members; TYPE_1__** members; } ;
struct TYPE_5__ {int tuple; } ;
typedef int Oid ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__ CatCList ;


 int Assert (int) ;
 int CStringGetDatum (char const*) ;
 int HeapTupleGetOid (int *) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int PROCNAMEARGSNSP ;
 int ReleaseSysCacheList (TYPE_2__*) ;
 TYPE_2__* SearchSysCacheList1 (int ,int ) ;
 char* TIMEBUCKETFN ;
 int * lappend_oid (int *,int ) ;

__attribute__((used)) static List *
get_timebucketfnoid()
{
 List *retlist = NIL;
 Oid funcoid;
 const char *funcname = TIMEBUCKETFN;
 CatCList *catlist = SearchSysCacheList1(PROCNAMEARGSNSP, CStringGetDatum(funcname));
 int i;

 for (i = 0; i < catlist->n_members; i++)
 {
  HeapTuple proctup = &catlist->members[i]->tuple;
  funcoid = ObjectIdGetDatum(HeapTupleGetOid(proctup));
  retlist = lappend_oid(retlist, funcoid);
 }
 ReleaseSysCacheList(catlist);
 Assert(retlist != NIL);
 return retlist;
}
