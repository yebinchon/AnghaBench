
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cy; } ;
struct TYPE_7__ {TYPE_2__* editor; TYPE_1__ dpi; } ;
struct TYPE_6__ {int nZoomNumerator; int nZoomDenominator; } ;
typedef TYPE_3__ ME_Context ;



int ME_twips2pointsY(const ME_Context *c, int y)
{
  if (c->editor->nZoomNumerator == 0)
    return y * c->dpi.cy / 1440;
  else
    return y * c->dpi.cy * c->editor->nZoomNumerator / 1440 / c->editor->nZoomDenominator;
}
