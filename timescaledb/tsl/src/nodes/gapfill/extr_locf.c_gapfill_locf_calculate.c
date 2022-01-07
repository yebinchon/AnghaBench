
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_7__ {int isnull; int value; scalar_t__ lookup_last; } ;
struct TYPE_6__ {scalar_t__ gapfill_start; } ;
typedef TYPE_1__ GapFillState ;
typedef TYPE_2__ GapFillLocfColumnState ;
typedef int Datum ;


 int gapfill_exec_expr (TYPE_1__*,scalar_t__,int*) ;

void
gapfill_locf_calculate(GapFillLocfColumnState *locf, GapFillState *state, int64 time, Datum *value,
        bool *isnull)
{

 if (locf->isnull && locf->lookup_last && time == state->gapfill_start)
  locf->value = gapfill_exec_expr(state, locf->lookup_last, &locf->isnull);

 *value = locf->value;
 *isnull = locf->isnull;
}
