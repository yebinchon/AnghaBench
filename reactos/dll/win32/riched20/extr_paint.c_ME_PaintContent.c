
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_63__ TYPE_9__ ;
typedef struct TYPE_62__ TYPE_8__ ;
typedef struct TYPE_61__ TYPE_7__ ;
typedef struct TYPE_60__ TYPE_6__ ;
typedef struct TYPE_59__ TYPE_5__ ;
typedef struct TYPE_58__ TYPE_4__ ;
typedef struct TYPE_57__ TYPE_3__ ;
typedef struct TYPE_56__ TYPE_30__ ;
typedef struct TYPE_55__ TYPE_2__ ;
typedef struct TYPE_54__ TYPE_23__ ;
typedef struct TYPE_53__ TYPE_22__ ;
typedef struct TYPE_52__ TYPE_21__ ;
typedef struct TYPE_51__ TYPE_20__ ;
typedef struct TYPE_50__ TYPE_1__ ;
typedef struct TYPE_49__ TYPE_19__ ;
typedef struct TYPE_48__ TYPE_18__ ;
typedef struct TYPE_47__ TYPE_17__ ;
typedef struct TYPE_46__ TYPE_16__ ;
typedef struct TYPE_45__ TYPE_15__ ;
typedef struct TYPE_44__ TYPE_14__ ;
typedef struct TYPE_43__ TYPE_13__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


struct TYPE_62__ {TYPE_13__* pCell; } ;
struct TYPE_63__ {TYPE_8__ para; } ;
struct TYPE_61__ {int y; } ;
struct TYPE_54__ {int nHeight; TYPE_7__ pt; } ;
struct TYPE_60__ {TYPE_23__ cell; } ;
struct TYPE_59__ {int y; } ;
struct TYPE_58__ {TYPE_21__* pLast; TYPE_1__* pFirst; } ;
struct TYPE_57__ {int nPos; } ;
struct TYPE_56__ {TYPE_6__ member; } ;
struct TYPE_55__ {scalar_t__ nPos; } ;
struct TYPE_47__ {int top; scalar_t__ bottom; int right; scalar_t__ left; } ;
struct TYPE_46__ {int y; scalar_t__ x; } ;
struct TYPE_53__ {int * hDC; TYPE_18__* editor; TYPE_17__ rcView; TYPE_16__ pt; } ;
struct TYPE_44__ {int nHeight; int nFlags; TYPE_21__* next_para; TYPE_13__* pCell; TYPE_10__* prev_para; TYPE_5__ pt; } ;
struct TYPE_45__ {TYPE_14__ para; } ;
struct TYPE_52__ {scalar_t__ type; TYPE_15__ member; } ;
struct TYPE_51__ {scalar_t__ nTotalLength; scalar_t__ nLastTotalLength; scalar_t__ nTotalWidth; scalar_t__ nLastTotalWidth; TYPE_4__* pBuffer; TYPE_3__ vert_si; TYPE_2__ horz_si; } ;
struct TYPE_50__ {TYPE_21__* next; } ;
struct TYPE_49__ {int top; int bottom; int right; scalar_t__ left; } ;
struct TYPE_48__ {int hbrBackground; } ;
struct TYPE_41__ {scalar_t__ yTextOffset; } ;
struct TYPE_42__ {TYPE_11__ cell; } ;
struct TYPE_43__ {TYPE_12__ member; } ;
struct TYPE_40__ {TYPE_9__ member; } ;
typedef TYPE_19__ RECT ;
typedef TYPE_20__ ME_TextEditor ;
typedef TYPE_21__ ME_DisplayItem ;
typedef TYPE_22__ ME_Context ;
typedef TYPE_23__ ME_Cell ;
typedef int * HRGN ;
typedef int HDC ;


 int * CreateRectRgn (int ,int ,int ,int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int FillRect (int ,TYPE_19__*,int ) ;
 int GetClipRgn (int ,int *) ;
 int IntersectClipRect (int ,scalar_t__,int,int ,int) ;
 int IntersectRect (TYPE_19__*,TYPE_19__*,TYPE_19__ const*) ;
 int IsRectEmpty (TYPE_19__*) ;
 int MEPF_ROWEND ;
 int ME_DestroyContext (TYPE_22__*) ;
 int ME_DrawParagraph (TYPE_22__*,TYPE_21__*) ;
 TYPE_30__* ME_FindItemBack (TYPE_21__*,int ) ;
 int ME_InitContext (TYPE_22__*,TYPE_20__*,int ) ;
 int ME_MoveCaret (TYPE_20__*) ;
 int ME_SendRequestResize (TYPE_20__*,int ) ;
 int SelectClipRgn (int ,int *) ;
 int SetBkMode (int ,int ) ;
 int TRANSPARENT ;
 int assert (int) ;
 int diCell ;
 scalar_t__ diParagraph ;

void ME_PaintContent(ME_TextEditor *editor, HDC hDC, const RECT *rcUpdate)
{
  ME_DisplayItem *item;
  ME_Context c;
  int ys, ye;
  HRGN oldRgn;

  oldRgn = CreateRectRgn(0, 0, 0, 0);
  if (!GetClipRgn(hDC, oldRgn))
  {
    DeleteObject(oldRgn);
    oldRgn = ((void*)0);
  }
  IntersectClipRect(hDC, rcUpdate->left, rcUpdate->top,
                     rcUpdate->right, rcUpdate->bottom);

  ME_InitContext(&c, editor, hDC);
  SetBkMode(hDC, TRANSPARENT);
  ME_MoveCaret(editor);
  item = editor->pBuffer->pFirst->next;


  c.pt.x = c.rcView.left - editor->horz_si.nPos;
  c.pt.y = c.rcView.top - editor->vert_si.nPos;
  while(item != editor->pBuffer->pLast)
  {
    assert(item->type == diParagraph);

    ys = c.pt.y + item->member.para.pt.y;
    if (item->member.para.pCell
        != item->member.para.next_para->member.para.pCell)
    {
      ME_Cell *cell = ((void*)0);
      cell = &ME_FindItemBack(item->member.para.next_para, diCell)->member.cell;
      ye = c.pt.y + cell->pt.y + cell->nHeight;
    } else {
      ye = ys + item->member.para.nHeight;
    }
    if (item->member.para.pCell && !(item->member.para.nFlags & MEPF_ROWEND) &&
        item->member.para.pCell != item->member.para.prev_para->member.para.pCell)
    {

      ys -= item->member.para.pCell->member.cell.yTextOffset;
    }


    if (ys < rcUpdate->bottom && ye > rcUpdate->top)
      ME_DrawParagraph(&c, item);
    item = item->member.para.next_para;
  }
  if (c.pt.y + editor->nTotalLength < c.rcView.bottom)
  {

    RECT rc;
    rc.top = c.pt.y + editor->nTotalLength;
    rc.left = c.rcView.left;
    rc.bottom = c.rcView.bottom;
    rc.right = c.rcView.right;

    IntersectRect(&rc, &rc, rcUpdate);

    if (!IsRectEmpty(&rc))
      FillRect(hDC, &rc, c.editor->hbrBackground);
  }
  if (editor->nTotalLength != editor->nLastTotalLength ||
      editor->nTotalWidth != editor->nLastTotalWidth)
    ME_SendRequestResize(editor, FALSE);
  editor->nLastTotalLength = editor->nTotalLength;
  editor->nLastTotalWidth = editor->nTotalWidth;

  SelectClipRgn(hDC, oldRgn);
  if (oldRgn)
    DeleteObject(oldRgn);

  c.hDC = ((void*)0);
  ME_DestroyContext(&c);
}
