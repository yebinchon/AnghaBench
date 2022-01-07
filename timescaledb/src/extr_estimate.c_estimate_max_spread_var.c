
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
typedef int VariableStatData ;
struct TYPE_3__ {int vartype; } ;
typedef TYPE_1__ Var ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Node ;
typedef int Datum ;


 int FlushErrorState () ;
 double INVALID_ESTIMATE ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_TRY () ;
 int ReleaseVariableStats (int ) ;
 int examine_variable (int *,int *,int ,int *) ;
 int get_sort_group_operators (int ,int,int,int,int *,int *,int *,int *) ;
 int ts_get_variable_range (int *,int *,int ,int *,int *) ;
 scalar_t__ ts_time_value_to_internal (int ,int ) ;

__attribute__((used)) static double
estimate_max_spread_var(PlannerInfo *root, Var *var)
{
 VariableStatData vardata;
 Oid ltop;
 Datum max_datum, min_datum;
 volatile int64 max, min;
 volatile bool valid;

 examine_variable(root, (Node *) var, 0, &vardata);
 get_sort_group_operators(var->vartype, 1, 0, 0, &ltop, ((void*)0), ((void*)0), ((void*)0));
 valid = ts_get_variable_range(root, &vardata, ltop, &min_datum, &max_datum);
 ReleaseVariableStats(vardata);

 if (!valid)
  return INVALID_ESTIMATE;

 PG_TRY();
 {
  max = ts_time_value_to_internal(max_datum, var->vartype);
  min = ts_time_value_to_internal(min_datum, var->vartype);
 }
 PG_CATCH();
 {
  valid = 0;
  FlushErrorState();
 }
 PG_END_TRY();

 if (!valid)
  return INVALID_ESTIMATE;

 return (double) (max - min);
}
