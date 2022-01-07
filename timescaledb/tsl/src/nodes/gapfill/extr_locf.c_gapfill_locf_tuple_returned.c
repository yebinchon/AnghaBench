
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int typlen; int typbyval; } ;
struct TYPE_5__ {int isnull; TYPE_1__ base; int value; } ;
typedef TYPE_2__ GapFillLocfColumnState ;
typedef int Datum ;


 int datumCopy (int ,int ,int ) ;

void
gapfill_locf_tuple_returned(GapFillLocfColumnState *locf, Datum value, bool isnull)
{
 locf->isnull = isnull;
 if (!isnull)
  locf->value = datumCopy(value, locf->base.typbyval, locf->base.typlen);
}
