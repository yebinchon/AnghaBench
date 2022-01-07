
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int width; } ;
struct TYPE_6__ {int cx; } ;
struct TYPE_8__ {TYPE_2__* editor; TYPE_1__ dpi; } ;
struct TYPE_7__ {int nZoomNumerator; int nZoomDenominator; } ;
typedef TYPE_3__ ME_Context ;


 int MulDiv (int,int,int) ;
 TYPE_4__* border_details ;

__attribute__((used)) static int ME_GetBorderPenWidth(const ME_Context* c, int idx)
{
  int width = border_details[idx].width;

  if (c->dpi.cx != 96)
    width = MulDiv(width, c->dpi.cx, 96);

  if (c->editor->nZoomNumerator != 0)
    width = MulDiv(width, c->editor->nZoomNumerator, c->editor->nZoomDenominator);

  return width;
}
