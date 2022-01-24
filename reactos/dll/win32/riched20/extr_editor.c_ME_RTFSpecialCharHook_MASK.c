#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_36__ {int dwMask; int wEffects; int /*<<< orphan*/  cTabCount; int /*<<< orphan*/  dxStartIndent; int /*<<< orphan*/  dxOffset; } ;
struct TYPE_31__ {int nFlags; TYPE_7__ fmt; int /*<<< orphan*/  border; TYPE_8__* pCell; TYPE_8__* next_para; } ;
struct TYPE_30__ {int nRightBoundary; TYPE_8__* next_cell; int /*<<< orphan*/  border; int /*<<< orphan*/  prev_cell; } ;
struct TYPE_32__ {TYPE_2__ para; TYPE_1__ cell; } ;
struct TYPE_37__ {TYPE_3__ member; } ;
struct TYPE_35__ {int rightBoundary; int /*<<< orphan*/  border; } ;
struct TYPE_34__ {int numCellsInserted; int numCellsDefined; int /*<<< orphan*/  border; int /*<<< orphan*/  leftEdge; int /*<<< orphan*/  gapH; struct TYPE_34__* parent; TYPE_8__* tableRowStart; TYPE_6__* cells; } ;
struct TYPE_33__ {int rtfMinor; int nestingLevel; char rtfMajor; int /*<<< orphan*/  rtfClass; TYPE_12__* editor; int /*<<< orphan*/  style; TYPE_5__* tableDef; int /*<<< orphan*/  canInheritInTbl; } ;
struct TYPE_29__ {TYPE_8__* pPara; int /*<<< orphan*/  nOffset; TYPE_8__* pRun; } ;
struct TYPE_28__ {TYPE_13__* pCursors; int /*<<< orphan*/  bEmulateVersion10; } ;
typedef  TYPE_4__ RTF_Info ;
typedef  TYPE_5__ RTFTable ;
typedef  TYPE_6__ RTFCell ;
typedef  TYPE_7__ PARAFORMAT2 ;
typedef  TYPE_8__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_TAB_STOPS ; 
 int MEPF_ROWEND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_13__*) ; 
 TYPE_8__* FUNC3 (TYPE_8__*) ; 
 TYPE_8__* FUNC4 (TYPE_12__*) ; 
 TYPE_8__* FUNC5 (TYPE_12__*) ; 
 TYPE_8__* FUNC6 (TYPE_12__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_12__*,TYPE_13__*,int,int /*<<< orphan*/ ) ; 
 int PFE_TABLE ; 
 int PFM_TABLE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  diCell ; 
 int /*<<< orphan*/  diRun ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
#define  rtfCell 133 
#define  rtfNestCell 132 
#define  rtfNestRow 131 
#define  rtfPar 130 
#define  rtfRow 129 
#define  rtfTab 128 
 int /*<<< orphan*/  rtfText ; 

void FUNC14(RTF_Info *info)
{
  RTFTable *tableDef = info->tableDef;
  switch (info->rtfMinor)
  {
    case rtfNestCell:
      if (info->editor->bEmulateVersion10) /* v1.0 - v3.0 */
        break;
      /* else fall through since v4.1 treats rtfNestCell and rtfCell the same */
    case rtfCell:
      if (!tableDef)
        break;
      FUNC9(info);
      if (!info->editor->bEmulateVersion10) { /* v4.1 */
        if (tableDef->tableRowStart)
        {
          if (!info->nestingLevel &&
              tableDef->tableRowStart->member.para.nFlags & MEPF_ROWEND)
          {
            ME_DisplayItem *para = tableDef->tableRowStart;
            para = para->member.para.next_para;
            para = FUNC6(info->editor, para);
            tableDef->tableRowStart = para;
            info->nestingLevel = 1;
          }
          FUNC4(info->editor);
        }
      } else { /* v1.0 - v3.0 */
        ME_DisplayItem *para = info->editor->pCursors[0].pPara;
        PARAFORMAT2 *pFmt = &para->member.para.fmt;
        if (pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE &&
            tableDef->numCellsInserted < tableDef->numCellsDefined)
        {
          WCHAR tab = '\t';
          FUNC7(info->editor, 0, &tab, 1, info->style);
          tableDef->numCellsInserted++;
        }
      }
      break;
    case rtfNestRow:
      if (info->editor->bEmulateVersion10) /* v1.0 - v3.0 */
        break;
      /* else fall through since v4.1 treats rtfNestRow and rtfRow the same */
    case rtfRow:
    {
      ME_DisplayItem *para, *cell, *run;
      int i;

      if (!tableDef)
        break;
      FUNC9(info);
      if (!info->editor->bEmulateVersion10) { /* v4.1 */
        if (!tableDef->tableRowStart)
          break;
        if (!info->nestingLevel &&
            tableDef->tableRowStart->member.para.nFlags & MEPF_ROWEND)
        {
          para = tableDef->tableRowStart;
          para = para->member.para.next_para;
          para = FUNC6(info->editor, para);
          tableDef->tableRowStart = para;
          info->nestingLevel++;
        }
        para = tableDef->tableRowStart;
        cell = FUNC1(para, diCell);
        FUNC11(cell && !cell->member.cell.prev_cell);
        if (tableDef->numCellsDefined < 1)
        {
          /* 2000 twips appears to be the cell size that native richedit uses
           * when no cell sizes are specified. */
          const int defaultCellSize = 2000;
          int nRightBoundary = defaultCellSize;
          cell->member.cell.nRightBoundary = nRightBoundary;
          while (cell->member.cell.next_cell) {
            cell = cell->member.cell.next_cell;
            nRightBoundary += defaultCellSize;
            cell->member.cell.nRightBoundary = nRightBoundary;
          }
          para = FUNC4(info->editor);
          cell = para->member.para.pCell;
          cell->member.cell.nRightBoundary = nRightBoundary;
        } else {
          for (i = 0; i < tableDef->numCellsDefined; i++)
          {
            RTFCell *cellDef = &tableDef->cells[i];
            cell->member.cell.nRightBoundary = cellDef->rightBoundary;
            FUNC0(info, &cell->member.cell.border,
                                     cellDef->border);
            cell = cell->member.cell.next_cell;
            if (!cell)
            {
              para = FUNC4(info->editor);
              cell = para->member.para.pCell;
            }
          }
          /* Cell for table row delimiter is empty */
          cell->member.cell.nRightBoundary = tableDef->cells[i-1].rightBoundary;
        }

        run = FUNC1(cell, diRun);
        if (info->editor->pCursors[0].pRun != run ||
            info->editor->pCursors[0].nOffset)
        {
          int nOfs, nChars;
          /* Delete inserted cells that aren't defined. */
          info->editor->pCursors[1].pRun = run;
          info->editor->pCursors[1].pPara = FUNC3(run);
          info->editor->pCursors[1].nOffset = 0;
          nOfs = FUNC2(&info->editor->pCursors[1]);
          nChars = FUNC2(&info->editor->pCursors[0]) - nOfs;
          FUNC8(info->editor, &info->editor->pCursors[1],
                                nChars, TRUE);
        }

        para = FUNC5(info->editor);
        para->member.para.fmt.dxOffset = FUNC10(info->tableDef->gapH);
        para->member.para.fmt.dxStartIndent = info->tableDef->leftEdge;
        FUNC0(info, &para->member.para.border,
                                 tableDef->border);
        info->nestingLevel--;
        if (!info->nestingLevel)
        {
          if (info->canInheritInTbl) {
            tableDef->tableRowStart = para;
          } else {
            while (info->tableDef) {
              tableDef = info->tableDef;
              info->tableDef = tableDef->parent;
              FUNC12(tableDef);
            }
          }
        } else {
          info->tableDef = tableDef->parent;
          FUNC12(tableDef);
        }
      } else { /* v1.0 - v3.0 */
        WCHAR endl = '\r';
        ME_DisplayItem *para = info->editor->pCursors[0].pPara;
        PARAFORMAT2 *pFmt = &para->member.para.fmt;
        pFmt->dxOffset = info->tableDef->gapH;
        pFmt->dxStartIndent = info->tableDef->leftEdge;

        FUNC0(info, &para->member.para.border,
                                 tableDef->border);
        while (tableDef->numCellsInserted < tableDef->numCellsDefined)
        {
          WCHAR tab = '\t';
          FUNC7(info->editor, 0, &tab, 1, info->style);
          tableDef->numCellsInserted++;
        }
        pFmt->cTabCount = FUNC13(tableDef->numCellsDefined, MAX_TAB_STOPS);
        if (!tableDef->numCellsDefined)
          pFmt->wEffects &= ~PFE_TABLE;
        FUNC7(info->editor, 0, &endl, 1, info->style);
        tableDef->numCellsInserted = 0;
      }
      break;
    }
    case rtfTab:
    case rtfPar:
      if (info->editor->bEmulateVersion10) { /* v1.0 - 3.0 */
        ME_DisplayItem *para;
        PARAFORMAT2 *pFmt;
        FUNC9(info);
        para = info->editor->pCursors[0].pPara;
        pFmt = &para->member.para.fmt;
        if (pFmt->dwMask & PFM_TABLE && pFmt->wEffects & PFE_TABLE)
        {
          /* rtfPar is treated like a space within a table. */
          info->rtfClass = rtfText;
          info->rtfMajor = ' ';
        }
        else if (info->rtfMinor == rtfPar && tableDef)
          tableDef->numCellsInserted = 0;
      }
      break;
  }
}