#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  nOffset; TYPE_2__* pRun; void* pPara; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; } ;
struct TYPE_14__ {int nSelectionType; TYPE_5__* pCursors; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int ME_SelectionType ;
typedef  TYPE_2__ ME_DisplayItem ;
typedef  int /*<<< orphan*/  ME_DIType ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  diParagraph ; 
 int /*<<< orphan*/  diParagraphOrEnd ; 
 int /*<<< orphan*/  diRun ; 
 int /*<<< orphan*/  diStartRow ; 
 int /*<<< orphan*/  diStartRowOrParagraphOrEnd ; 
 int /*<<< orphan*/  diTextEnd ; 
#define  stDocument 132 
#define  stLine 131 
#define  stParagraph 130 
#define  stPosition 129 
#define  stWord 128 

__attribute__((used)) static void
FUNC7(ME_TextEditor *editor, ME_SelectionType selectionType)
{
  /* pCursor[0] is the end of the selection
   * pCursor[1] is the start of the selection (or the position selection anchor)
   * pCursor[2] and [3] are the selection anchors that are backed up
   * so they are kept when the selection changes for drag selection.
   */

  editor->nSelectionType = selectionType;
  switch(selectionType)
  {
    case stPosition:
      break;
    case stWord:
      FUNC3(editor, &editor->pCursors[0], +1);
      editor->pCursors[1] = editor->pCursors[0];
      FUNC3(editor, &editor->pCursors[1], -1);
      break;
    case stLine:
    case stParagraph:
    {
      ME_DisplayItem *pItem;
      ME_DIType fwdSearchType, backSearchType;
      if (selectionType == stParagraph) {
          backSearchType = diParagraph;
          fwdSearchType = diParagraphOrEnd;
      } else {
          backSearchType = diStartRow;
          fwdSearchType = diStartRowOrParagraphOrEnd;
      }
      pItem = FUNC1(editor->pCursors[0].pRun, fwdSearchType);
      FUNC6(pItem);
      if (pItem->type == diTextEnd)
          editor->pCursors[0].pRun = FUNC0(pItem, diRun);
      else
          editor->pCursors[0].pRun = FUNC1(pItem, diRun);
      editor->pCursors[0].pPara = FUNC2(editor->pCursors[0].pRun);
      editor->pCursors[0].nOffset = 0;

      pItem = FUNC0(pItem, backSearchType);
      editor->pCursors[1].pRun = FUNC1(pItem, diRun);
      editor->pCursors[1].pPara = FUNC2(editor->pCursors[1].pRun);
      editor->pCursors[1].nOffset = 0;
      break;
    }
    case stDocument:
      /* Select everything with cursor anchored from the start of the text */
      editor->nSelectionType = stDocument;
      FUNC5(editor, &editor->pCursors[1]);
      FUNC4(editor, &editor->pCursors[0], FALSE);
      break;
    default: FUNC6(0);
  }
  /* Store the anchor positions for extending the selection. */
  editor->pCursors[2] = editor->pCursors[0];
  editor->pCursors[3] = editor->pCursors[1];
}