
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_8__ {int typlen; int typbyval; } ;
struct TYPE_7__ {int isnull; int value; int time; } ;
struct TYPE_6__ {int isnull; } ;
struct TYPE_9__ {TYPE_3__ base; TYPE_2__ prev; TYPE_1__ next; } ;
typedef TYPE_4__ GapFillInterpolateColumnState ;
typedef int Datum ;


 int datumCopy (int ,int ,int ) ;

void
gapfill_interpolate_tuple_returned(GapFillInterpolateColumnState *column, int64 time, Datum value,
           bool isnull)
{
 column->next.isnull = 1;
 column->prev.isnull = isnull;
 if (!isnull)
 {
  column->prev.time = time;
  column->prev.value = datumCopy(value, column->base.typbyval, column->base.typlen);
 }
}
