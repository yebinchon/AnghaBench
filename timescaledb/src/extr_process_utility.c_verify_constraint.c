
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;
typedef int Node ;
typedef int Hypertable ;
typedef int Constraint ;
typedef int Cache ;


 int ts_cache_release (int *) ;
 int * ts_hypertable_cache_get_entry_rv (int *,int *) ;
 int * ts_hypertable_cache_pin () ;
 int verify_constraint_hypertable (int *,int *) ;
 int verify_constraint_plaintable (int *,int *) ;

__attribute__((used)) static void
verify_constraint(RangeVar *relation, Constraint *constr)
{
 Cache *hcache = ts_hypertable_cache_pin();
 Hypertable *ht = ts_hypertable_cache_get_entry_rv(hcache, relation);

 if (((void*)0) == ht)
  verify_constraint_plaintable(relation, constr);
 else
  verify_constraint_hypertable(ht, (Node *) constr);

 ts_cache_release(hcache);
}
