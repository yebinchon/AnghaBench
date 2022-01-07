
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_9__ ;
typedef struct TYPE_50__ TYPE_8__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_32__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_16__ ;
typedef struct TYPE_40__ TYPE_12__ ;
typedef struct TYPE_39__ TYPE_11__ ;
typedef struct TYPE_38__ TYPE_10__ ;


struct TYPE_49__ {scalar_t__ y; } ;
struct TYPE_51__ {int nParaNumOffset; int nFirstMargin; int nLeftMargin; int nRightMargin; scalar_t__ nRow; TYPE_7__ pt; TYPE_11__* pRowStart; int * style; TYPE_11__* pPara; TYPE_12__* context; } ;
struct TYPE_50__ {int dxStartIndent; int dxOffset; int wNumberingTab; int dxRightIndent; int dwMask; int wEffects; int wBorders; int dySpaceAfter; int dySpaceBefore; scalar_t__ wNumbering; } ;
struct TYPE_46__ {int width; } ;
struct TYPE_41__ {int nFlags; scalar_t__ nRows; scalar_t__ nHeight; TYPE_8__ fmt; TYPE_11__* next_para; TYPE_4__ para_num; scalar_t__ pCell; } ;
struct TYPE_48__ {TYPE_16__ para; } ;
struct TYPE_47__ {scalar_t__ bEmulateVersion10; int cPasswordMask; } ;
struct TYPE_42__ {scalar_t__ dxOffset; } ;
struct TYPE_43__ {TYPE_1__ fmt; } ;
struct TYPE_45__ {TYPE_2__ para; } ;
struct TYPE_44__ {TYPE_3__ member; } ;
struct TYPE_40__ {TYPE_5__* editor; } ;
struct TYPE_39__ {scalar_t__ type; TYPE_6__ member; struct TYPE_39__* next; } ;
struct TYPE_38__ {int total_rows; } ;
typedef TYPE_8__ PARAFORMAT2 ;
typedef TYPE_9__ ME_WrapContext ;
typedef TYPE_10__ ME_TextEditor ;
typedef TYPE_11__ ME_DisplayItem ;
typedef TYPE_12__ ME_Context ;


 int MEPF_REWRAP ;
 int MEPF_ROWEND ;
 int ME_BeginRow (TYPE_9__*) ;
 int ME_GetParaBorderWidth (TYPE_12__*,int) ;
 int ME_GetParaLineSpace (TYPE_12__*,TYPE_16__*) ;
 TYPE_32__* ME_GetTableRowEnd (TYPE_11__*) ;
 int ME_PrepareParagraphForWrapping (TYPE_10__*,TYPE_12__*,TYPE_11__*) ;
 int ME_WrapEndParagraph (TYPE_9__*,TYPE_11__*) ;
 TYPE_11__* ME_WrapHandleRun (TYPE_9__*,TYPE_11__*) ;
 void* ME_twips2pointsX (TYPE_12__*,int) ;
 scalar_t__ ME_twips2pointsY (TYPE_12__*,int ) ;
 int PFE_TABLE ;
 int PFM_BORDER ;
 int PFM_SPACEAFTER ;
 int PFM_SPACEBEFORE ;
 int PFM_TABLE ;
 scalar_t__ SUCCEEDED (int ) ;
 int assert (int) ;
 scalar_t__ diParagraph ;
 scalar_t__ diRun ;
 scalar_t__ diStartRow ;
 int itemize_para (TYPE_12__*,TYPE_11__*) ;
 int max (void*,int ) ;
 int para_num_init (TYPE_12__*,TYPE_16__*) ;
 int shape_para (TYPE_12__*,TYPE_11__*) ;

__attribute__((used)) static void ME_WrapTextParagraph(ME_TextEditor *editor, ME_Context *c, ME_DisplayItem *tp) {
  ME_DisplayItem *p;
  ME_WrapContext wc;
  int border = 0;
  int linespace = 0;
  PARAFORMAT2 *pFmt;

  assert(tp->type == diParagraph);
  if (!(tp->member.para.nFlags & MEPF_REWRAP)) {
    return;
  }
  ME_PrepareParagraphForWrapping(editor, c, tp);


  para_num_init( c, &tp->member.para );


  if (!c->editor->cPasswordMask )

  {
      if (SUCCEEDED( itemize_para( c, tp ) ))
          shape_para( c, tp );
  }

  pFmt = &tp->member.para.fmt;

  wc.context = c;
  wc.pPara = tp;

  wc.style = ((void*)0);
  wc.nParaNumOffset = 0;
  if (tp->member.para.nFlags & MEPF_ROWEND) {
    wc.nFirstMargin = wc.nLeftMargin = wc.nRightMargin = 0;
  } else {
    int dxStartIndent = pFmt->dxStartIndent;
    if (tp->member.para.pCell) {
      dxStartIndent += ME_GetTableRowEnd(tp)->member.para.fmt.dxOffset;
    }
    wc.nLeftMargin = ME_twips2pointsX(c, dxStartIndent + pFmt->dxOffset);
    wc.nFirstMargin = ME_twips2pointsX(c, dxStartIndent);
    if (pFmt->wNumbering)
    {
        wc.nParaNumOffset = wc.nFirstMargin;
        dxStartIndent = max( ME_twips2pointsX(c, pFmt->wNumberingTab),
                             tp->member.para.para_num.width );
        wc.nFirstMargin += dxStartIndent;
    }
    wc.nRightMargin = ME_twips2pointsX(c, pFmt->dxRightIndent);

    if (wc.nFirstMargin < 0)
        wc.nFirstMargin = 0;
    if (wc.nLeftMargin < 0)
        wc.nLeftMargin = 0;
  }
  if (c->editor->bEmulateVersion10 &&
      pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE)
  {
    wc.nFirstMargin += ME_twips2pointsX(c, pFmt->dxOffset * 2);
  }
  wc.nRow = 0;
  wc.pt.y = 0;
  if (pFmt->dwMask & PFM_SPACEBEFORE)
    wc.pt.y += ME_twips2pointsY(c, pFmt->dySpaceBefore);
  if (!(pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE) &&
      pFmt->dwMask & PFM_BORDER)
  {
    border = ME_GetParaBorderWidth(c, tp->member.para.fmt.wBorders);
    if (pFmt->wBorders & 1) {
      wc.nFirstMargin += border;
      wc.nLeftMargin += border;
    }
    if (pFmt->wBorders & 2)
      wc.nRightMargin -= border;
    if (pFmt->wBorders & 4)
      wc.pt.y += border;
  }

  linespace = ME_GetParaLineSpace(c, &tp->member.para);

  ME_BeginRow(&wc);
  for (p = tp->next; p!=tp->member.para.next_para; ) {
    assert(p->type != diStartRow);
    if (p->type == diRun) {
      p = ME_WrapHandleRun(&wc, p);
    }
    else p = p->next;
    if (wc.nRow && p == wc.pRowStart)
      wc.pt.y += linespace;
  }
  ME_WrapEndParagraph(&wc, p);
  if (!(pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE) &&
      (pFmt->dwMask & PFM_BORDER) && (pFmt->wBorders & 8))
    wc.pt.y += border;
  if (tp->member.para.fmt.dwMask & PFM_SPACEAFTER)
    wc.pt.y += ME_twips2pointsY(c, pFmt->dySpaceAfter);

  tp->member.para.nFlags &= ~MEPF_REWRAP;
  tp->member.para.nHeight = wc.pt.y;
  tp->member.para.nRows = wc.nRow;
  editor->total_rows += wc.nRow;
}
