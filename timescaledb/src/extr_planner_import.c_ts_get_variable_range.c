
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_8__ {int statsTuple; int atttype; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_9__ {int nvalues; int * values; } ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_2__ AttStatsSlot ;


 int ATTSTATSSLOT_VALUES ;
 int DEFAULT_COLLATION_OID ;
 scalar_t__ DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_HISTOGRAM ;
 int STATISTIC_KIND_MCV ;
 int datumCopy (int ,int,int ) ;
 int fmgr_info (int ,int *) ;
 int free_attstatsslot (TYPE_2__*) ;
 scalar_t__ get_actual_variable_range (int *,TYPE_1__*,int ,int *,int *) ;
 scalar_t__ get_attstatsslot (TYPE_2__*,int ,int ,int ,int ) ;
 int get_opcode (int ) ;
 int get_typlenbyval (int ,int *,int*) ;
 int statistic_proc_security_check (TYPE_1__*,int ) ;

bool
ts_get_variable_range(PlannerInfo *root, VariableStatData *vardata, Oid sortop, Datum *min,
       Datum *max)
{
 Datum tmin = 0;
 Datum tmax = 0;
 bool have_data = 0;
 int16 typLen;
 bool typByVal;
 Oid opfuncoid;
 AttStatsSlot sslot;
 int i;
 if (!HeapTupleIsValid(vardata->statsTuple))
 {

  return 0;
 }
 if (!statistic_proc_security_check(vardata, (opfuncoid = get_opcode(sortop))))
  return 0;

 get_typlenbyval(vardata->atttype, &typLen, &typByVal);
 if (get_attstatsslot(&sslot,
       vardata->statsTuple,
       STATISTIC_KIND_HISTOGRAM,
       sortop,
       ATTSTATSSLOT_VALUES))
 {
  if (sslot.nvalues > 0)
  {
   tmin = datumCopy(sslot.values[0], typByVal, typLen);
   tmax = datumCopy(sslot.values[sslot.nvalues - 1], typByVal, typLen);
   have_data = 1;
  }
  free_attstatsslot(&sslot);
 }
 else if (get_attstatsslot(&sslot, vardata->statsTuple, STATISTIC_KIND_HISTOGRAM, InvalidOid, 0))
 {
  free_attstatsslot(&sslot);
  return 0;
 }







 if (get_attstatsslot(&sslot,
       vardata->statsTuple,
       STATISTIC_KIND_MCV,
       InvalidOid,
       ATTSTATSSLOT_VALUES))
 {
  bool tmin_is_mcv = 0;
  bool tmax_is_mcv = 0;
  FmgrInfo opproc;

  fmgr_info(opfuncoid, &opproc);

  for (i = 0; i < sslot.nvalues; i++)
  {
   if (!have_data)
   {
    tmin = tmax = sslot.values[i];
    tmin_is_mcv = tmax_is_mcv = have_data = 1;
    continue;
   }
   if (DatumGetBool(
     FunctionCall2Coll(&opproc, DEFAULT_COLLATION_OID, sslot.values[i], tmin)))
   {
    tmin = sslot.values[i];
    tmin_is_mcv = 1;
   }
   if (DatumGetBool(
     FunctionCall2Coll(&opproc, DEFAULT_COLLATION_OID, tmax, sslot.values[i])))
   {
    tmax = sslot.values[i];
    tmax_is_mcv = 1;
   }
  }
  if (tmin_is_mcv)
   tmin = datumCopy(tmin, typByVal, typLen);
  if (tmax_is_mcv)
   tmax = datumCopy(tmax, typByVal, typLen);
  free_attstatsslot(&sslot);
 }

 *min = tmin;
 *max = tmax;
 return have_data;
}
