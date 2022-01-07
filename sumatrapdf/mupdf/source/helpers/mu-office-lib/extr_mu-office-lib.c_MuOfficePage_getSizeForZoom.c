
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int x1; int x0; int y1; int y0; } ;
typedef TYPE_1__ fz_rect ;
struct TYPE_8__ {int ctx; } ;
struct TYPE_7__ {int page; TYPE_3__* doc; } ;
typedef TYPE_2__ MuOfficePage ;
typedef TYPE_3__ MuOfficeDoc ;
typedef int MuError ;


 int MuError_BadNull ;
 int MuError_OK ;
 TYPE_1__ fz_bound_page (int ,int ) ;

MuError MuOfficePage_getSizeForZoom( MuOfficePage *page,
     float zoom,
     int *pWidth,
     int *pHeight)
{
 MuOfficeDoc *doc;
 fz_rect rect;
 float w, h;

 if (!page)
  return MuError_BadNull;
 doc = page->doc;
 if (!doc)
  return MuError_BadNull;

 rect = fz_bound_page(doc->ctx, page->page);



 w = 90 * (rect.x1 - rect.x0) / 72;
 h = 90 * (rect.y1 - rect.y0) / 72;

 if (pWidth)
  *pWidth = (int)(w * zoom + 0.5f);
 if (pHeight)
  *pHeight = (int)(h * zoom + 0.5f);

 return MuError_OK;
}
