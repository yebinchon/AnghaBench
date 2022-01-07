
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_24__ {int x; } ;
struct TYPE_21__ {int left; int right; } ;
struct TYPE_29__ {int hDC; TYPE_4__ pt; TYPE_3__* editor; TYPE_1__ rcView; } ;
struct TYPE_25__ {int dwMask; int wBorders; int wEffects; int dySpaceAfter; int dySpaceBefore; } ;
struct TYPE_28__ {int nHeight; TYPE_5__ fmt; } ;
struct TYPE_27__ {int x; int y; } ;
struct TYPE_26__ {int left; int right; int top; int bottom; } ;
struct TYPE_22__ {int cx; } ;
struct TYPE_23__ {int hbrBackground; int nTotalWidth; TYPE_2__ sizeWindow; int texthost; scalar_t__ bEmulateVersion10; } ;
struct TYPE_20__ {scalar_t__ dble; int pen_style; } ;
typedef TYPE_6__ RECT ;
typedef TYPE_7__ POINT ;
typedef TYPE_8__ ME_Paragraph ;
typedef TYPE_9__ ME_Context ;
typedef int * HPEN ;
typedef int COLORREF ;
typedef int BOOL ;


 int COLOR_WINDOWTEXT ;
 int * CreatePen (int ,int,int ) ;
 int DD (int) ;
 int DeleteObject (int *) ;
 int FIXME (char*,int) ;
 int FillRect (int ,TYPE_6__*,int ) ;
 int ITextHost_TxGetSysColor (int ,int ) ;
 int LineTo (int ,int,int) ;
 int ME_GetBorderPenWidth (TYPE_9__*,int) ;
 int ME_GetParaBorderWidth (TYPE_9__*,int) ;
 void* ME_twips2pointsY (TYPE_9__*,int ) ;
 int MoveToEx (int ,int,int,TYPE_7__*) ;
 int PFE_TABLE ;
 int PFM_BORDER ;
 int PFM_SPACEAFTER ;
 int PFM_SPACEBEFORE ;
 int PFM_TABLE ;
 int * SelectObject (int ,int *) ;
 int SetRectEmpty (TYPE_6__*) ;
 TYPE_10__* border_details ;
 int max (int ,int ) ;
 int * pen_colors ;

__attribute__((used)) static void ME_DrawParaDecoration(ME_Context* c, ME_Paragraph* para, int y, RECT* bounds)
{
  int idx, border_width, top_border, bottom_border;
  RECT rc;
  BOOL hasParaBorder;

  SetRectEmpty(bounds);
  if (!(para->fmt.dwMask & (PFM_BORDER | PFM_SPACEBEFORE | PFM_SPACEAFTER))) return;

  border_width = top_border = bottom_border = 0;
  idx = (para->fmt.wBorders >> 8) & 0xF;
  hasParaBorder = (!(c->editor->bEmulateVersion10 &&
                     para->fmt.dwMask & PFM_TABLE &&
                     para->fmt.wEffects & PFE_TABLE) &&
                   (para->fmt.dwMask & PFM_BORDER) &&
                    idx != 0 &&
                    (para->fmt.wBorders & 0xF));
  if (hasParaBorder)
  {
    if (para->fmt.wBorders & 0x00B0)
      FIXME("Unsupported border flags %x\n", para->fmt.wBorders);
    border_width = ME_GetParaBorderWidth(c, para->fmt.wBorders);
    if (para->fmt.wBorders & 4) top_border = border_width;
    if (para->fmt.wBorders & 8) bottom_border = border_width;
  }

  if (para->fmt.dwMask & PFM_SPACEBEFORE)
  {
    rc.left = c->rcView.left;
    rc.right = c->rcView.right;
    rc.top = y;
    bounds->top = ME_twips2pointsY(c, para->fmt.dySpaceBefore);
    rc.bottom = y + bounds->top + top_border;
    FillRect(c->hDC, &rc, c->editor->hbrBackground);
  }

  if (para->fmt.dwMask & PFM_SPACEAFTER)
  {
    rc.left = c->rcView.left;
    rc.right = c->rcView.right;
    rc.bottom = y + para->nHeight;
    bounds->bottom = ME_twips2pointsY(c, para->fmt.dySpaceAfter);
    rc.top = rc.bottom - bounds->bottom - bottom_border;
    FillRect(c->hDC, &rc, c->editor->hbrBackground);
  }



  if (hasParaBorder) {
    int pen_width, rightEdge;
    COLORREF pencr;
    HPEN pen = ((void*)0), oldpen = ((void*)0);
    POINT pt;

    if (para->fmt.wBorders & 64)
      pencr = ITextHost_TxGetSysColor(c->editor->texthost,
                                      COLOR_WINDOWTEXT);
    else
      pencr = pen_colors[(para->fmt.wBorders >> 12) & 0xF];

    rightEdge = c->pt.x + max(c->editor->sizeWindow.cx,
                              c->editor->nTotalWidth);

    pen_width = ME_GetBorderPenWidth(c, idx);
    pen = CreatePen(border_details[idx].pen_style, pen_width, pencr);
    oldpen = SelectObject(c->hDC, pen);
    MoveToEx(c->hDC, 0, 0, &pt);






    if (para->fmt.wBorders & 1)
    {
      MoveToEx(c->hDC, c->pt.x, y + bounds->top, ((void*)0));
      LineTo(c->hDC, c->pt.x, y + para->nHeight - bounds->bottom);
      if (border_details[idx].dble) {
        rc.left = c->pt.x + 1;
        rc.right = rc.left + border_width;
        rc.top = y + bounds->top;
        rc.bottom = y + para->nHeight - bounds->bottom;
        FillRect(c->hDC, &rc, c->editor->hbrBackground);
        MoveToEx(c->hDC, c->pt.x + pen_width + 1, y + bounds->top + ((para->fmt.wBorders & (4)) ? (pen_width + 1) : 0), ((void*)0));
        LineTo(c->hDC, c->pt.x + pen_width + 1, y + para->nHeight - bounds->bottom - ((para->fmt.wBorders & (8)) ? (pen_width + 1) : 0));
      }
      bounds->left += border_width;
    }
    if (para->fmt.wBorders & 2)
    {
      MoveToEx(c->hDC, rightEdge - 1, y + bounds->top, ((void*)0));
      LineTo(c->hDC, rightEdge - 1, y + para->nHeight - bounds->bottom);
      if (border_details[idx].dble) {
        rc.left = rightEdge - pen_width - 1;
        rc.right = rc.left + pen_width;
        rc.top = y + bounds->top;
        rc.bottom = y + para->nHeight - bounds->bottom;
        FillRect(c->hDC, &rc, c->editor->hbrBackground);
        MoveToEx(c->hDC, rightEdge - 1 - pen_width - 1, y + bounds->top + ((para->fmt.wBorders & (4)) ? (pen_width + 1) : 0), ((void*)0));
        LineTo(c->hDC, rightEdge - 1 - pen_width - 1, y + para->nHeight - bounds->bottom - ((para->fmt.wBorders & (8)) ? (pen_width + 1) : 0));
      }
      bounds->right += border_width;
    }
    if (para->fmt.wBorders & 4)
    {
      MoveToEx(c->hDC, c->pt.x, y + bounds->top, ((void*)0));
      LineTo(c->hDC, rightEdge, y + bounds->top);
      if (border_details[idx].dble) {
        MoveToEx(c->hDC, c->pt.x + ((para->fmt.wBorders & (1)) ? (pen_width + 1) : 0), y + bounds->top + pen_width + 1, ((void*)0));
        LineTo(c->hDC, rightEdge - ((para->fmt.wBorders & (2)) ? (pen_width + 1) : 0), y + bounds->top + pen_width + 1);
      }
      bounds->top += border_width;
    }
    if (para->fmt.wBorders & 8)
    {
      MoveToEx(c->hDC, c->pt.x, y + para->nHeight - bounds->bottom - 1, ((void*)0));
      LineTo(c->hDC, rightEdge, y + para->nHeight - bounds->bottom - 1);
      if (border_details[idx].dble) {
        MoveToEx(c->hDC, c->pt.x + ((para->fmt.wBorders & (1)) ? (pen_width + 1) : 0), y + para->nHeight - bounds->bottom - 1 - pen_width - 1, ((void*)0));
        LineTo(c->hDC, rightEdge - ((para->fmt.wBorders & (2)) ? (pen_width + 1) : 0), y + para->nHeight - bounds->bottom - 1 - pen_width - 1);
      }
      bounds->bottom += border_width;
    }


    MoveToEx(c->hDC, pt.x, pt.y, ((void*)0));
    SelectObject(c->hDC, oldpen);
    DeleteObject(pen);
  }
}
