#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ lpszName; } ;
struct TYPE_12__ {scalar_t__ lpszName; } ;
struct TYPE_11__ {int styleFlags; int /*<<< orphan*/ * pCursors; int /*<<< orphan*/  texthost; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int INT ;
typedef  TYPE_2__ CREATESTRUCTW ;
typedef  TYPE_3__ CREATESTRUCTA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ESB_DISABLE_BOTH ; 
 int ES_DISABLENOSCROLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  SB_HORZ ; 
 int /*<<< orphan*/  SB_VERT ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_HSCROLL ; 
 int WS_VSCROLL ; 

__attribute__((used)) static LRESULT FUNC9(ME_TextEditor *editor, LPARAM lParam, BOOL unicode)
{
  CREATESTRUCTW *createW = (CREATESTRUCTW*)lParam;
  CREATESTRUCTA *createA = (CREATESTRUCTA*)lParam;
  void *text = NULL;
  INT max;

  if (lParam)
    text = unicode ? (void*)createW->lpszName : (void*)createA->lpszName;

  FUNC6(editor);

  max = (editor->styleFlags & ES_DISABLENOSCROLL) ? 1 : 0;
  if (~editor->styleFlags & ES_DISABLENOSCROLL || editor->styleFlags & WS_VSCROLL)
    FUNC1(editor->texthost, SB_VERT, 0, max, TRUE);

  if (~editor->styleFlags & ES_DISABLENOSCROLL || editor->styleFlags & WS_HSCROLL)
    FUNC1(editor->texthost, SB_HORZ, 0, max, TRUE);

  if (editor->styleFlags & ES_DISABLENOSCROLL)
  {
    if (editor->styleFlags & WS_VSCROLL)
    {
      FUNC0(editor->texthost, SB_VERT, ESB_DISABLE_BOTH);
      FUNC2(editor->texthost, SB_VERT, TRUE);
    }
    if (editor->styleFlags & WS_HSCROLL)
    {
      FUNC0(editor->texthost, SB_HORZ, ESB_DISABLE_BOTH);
      FUNC2(editor->texthost, SB_HORZ, TRUE);
    }
  }

  if (text)
  {
    FUNC7(editor, text, unicode);
    FUNC5(editor, &editor->pCursors[0]);
    FUNC5(editor, &editor->pCursors[1]);
  }

  FUNC3(editor);
  FUNC8(editor);
  FUNC4(editor);
  return 0;
}