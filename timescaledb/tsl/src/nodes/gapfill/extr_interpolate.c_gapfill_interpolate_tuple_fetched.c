
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_6__ {int typlen; int typbyval; } ;
struct TYPE_5__ {int isnull; int value; int time; } ;
struct TYPE_7__ {TYPE_2__ base; TYPE_1__ next; } ;
typedef TYPE_3__ GapFillInterpolateColumnState ;
typedef int Datum ;


 int datumCopy (int ,int ,int ) ;

void
gapfill_interpolate_tuple_fetched(GapFillInterpolateColumnState *column, int64 time, Datum value,
          bool isnull)
{
 column->next.isnull = isnull;
 if (!isnull)
 {
  column->next.time = time;
  column->next.value = datumCopy(value, column->base.typbyval, column->base.typlen);
 }
}
