
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_12__ {scalar_t__ time; int value; scalar_t__ isnull; } ;
struct TYPE_9__ {int typid; } ;
struct TYPE_11__ {TYPE_1__ base; TYPE_8__ next; TYPE_8__ prev; scalar_t__ lookup_after; scalar_t__ lookup_before; } ;
struct TYPE_10__ {scalar_t__ gapfill_start; scalar_t__ state; } ;
typedef TYPE_2__ GapFillState ;
typedef TYPE_3__ GapFillInterpolateColumnState ;
typedef int Datum ;


 int DatumGetFloat4 (int ) ;
 int DatumGetFloat8 (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ FETCHED_LAST ;
 scalar_t__ FETCHED_NEXT_GROUP ;


 int Float4GetDatum (int ) ;
 int Float8GetDatum (int ) ;



 int INTERPOLATE (scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int) ;
 int gapfill_fetch_sample (TYPE_2__*,TYPE_3__*,TYPE_8__*,scalar_t__) ;
 int int2_numeric ;
 int int4_numeric ;
 int int8_numeric ;
 int interpolate_numeric (scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int numeric_int2 ;
 int numeric_int4 ;
 int numeric_int8 ;
 int pg_unreachable () ;

void
gapfill_interpolate_calculate(GapFillInterpolateColumnState *column, GapFillState *state,
         int64 time, Datum *value, bool *isnull)
{
 int64 x, x0, x1;
 Datum y0, y1;


 if (column->prev.isnull && column->lookup_before && time == state->gapfill_start)
  gapfill_fetch_sample(state, column, &column->prev, column->lookup_before);

 if (column->next.isnull && column->lookup_after &&
  (FETCHED_LAST == state->state || FETCHED_NEXT_GROUP == state->state))
  gapfill_fetch_sample(state, column, &column->next, column->lookup_after);

 *isnull = column->prev.isnull || column->next.isnull;
 if (*isnull)
  return;

 y0 = column->prev.value;
 y1 = column->next.value;

 x = time;
 x0 = column->prev.time;
 x1 = column->next.time;

 switch (column->base.typid)
 {





  case 130:
   *value =
    DirectFunctionCall1(numeric_int2,
         interpolate_numeric(x,
              x0,
              x1,
              DirectFunctionCall1(int2_numeric, y0),
              DirectFunctionCall1(int2_numeric, y1)));
   break;
  case 129:
   *value =
    DirectFunctionCall1(numeric_int4,
         interpolate_numeric(x,
              x0,
              x1,
              DirectFunctionCall1(int4_numeric, y0),
              DirectFunctionCall1(int4_numeric, y1)));
   break;
  case 128:
   *value =
    DirectFunctionCall1(numeric_int8,
         interpolate_numeric(x,
              x0,
              x1,
              DirectFunctionCall1(int8_numeric, y0),
              DirectFunctionCall1(int8_numeric, y1)));
   break;
  case 132:
   *value = Float4GetDatum(INTERPOLATE(x, x0, x1, DatumGetFloat4(y0), DatumGetFloat4(y1)));
   break;
  case 131:
   *value = Float8GetDatum(INTERPOLATE(x, x0, x1, DatumGetFloat8(y0), DatumGetFloat8(y1)));
   break;
  default:





   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("unsupported datatype for interpolate: %s",
       format_type_be(column->base.typid))));
   pg_unreachable();
   break;
 }
}
