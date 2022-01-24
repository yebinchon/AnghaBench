#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  texthost; int /*<<< orphan*/ * pCursors; void* bCaretAtEnd; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Cursor ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 void* FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int,void*) ; 
 void* FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
#define  VK_DOWN 135 
#define  VK_END 134 
#define  VK_HOME 133 
#define  VK_LEFT 132 
#define  VK_NEXT 131 
#define  VK_PRIOR 130 
#define  VK_RIGHT 129 
#define  VK_UP 128 

BOOL
FUNC16(ME_TextEditor *editor, int nVKey, BOOL extend, BOOL ctrl)
{
  int nCursor = 0;
  ME_Cursor *p = &editor->pCursors[nCursor];
  ME_Cursor tmp_curs = *p;
  BOOL success = FALSE;

  FUNC7(editor);
  switch(nVKey) {
    case VK_LEFT:
      editor->bCaretAtEnd = FALSE;
      if (ctrl)
        success = FUNC12(editor, &tmp_curs, -1);
      else
        success = FUNC10(editor, &tmp_curs, -1, extend);
      break;
    case VK_RIGHT:
      editor->bCaretAtEnd = FALSE;
      if (ctrl)
        success = FUNC12(editor, &tmp_curs, +1);
      else
        success = FUNC10(editor, &tmp_curs, +1, extend);
      break;
    case VK_UP:
      FUNC11(editor, &tmp_curs, -1, extend);
      break;
    case VK_DOWN:
      FUNC11(editor, &tmp_curs, +1, extend);
      break;
    case VK_PRIOR:
      FUNC6(editor, &tmp_curs);
      break;
    case VK_NEXT:
      FUNC5(editor, &tmp_curs);
      break;
    case VK_HOME: {
      if (ctrl)
        FUNC2(editor, &tmp_curs);
      else
        FUNC4(editor, &tmp_curs);
      editor->bCaretAtEnd = FALSE;
      break;
    }
    case VK_END:
      if (ctrl)
        FUNC1(editor, &tmp_curs);
      else
        FUNC3(editor, &tmp_curs);
      break;
  }

  if (!extend)
    editor->pCursors[1] = tmp_curs;
  *p = tmp_curs;

  FUNC9(editor);
  FUNC13(editor);
  FUNC0(editor->texthost, FALSE);
  FUNC8(editor, &tmp_curs);
  FUNC15(editor);
  FUNC14(editor);
  return success;
}