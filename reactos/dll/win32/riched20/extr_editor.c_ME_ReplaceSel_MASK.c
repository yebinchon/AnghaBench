#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_12__ {int /*<<< orphan*/ * pCursors; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void FUNC10(ME_TextEditor *editor, BOOL can_undo, const WCHAR *str, int len)
{
  int from, to, nStartCursor;
  ME_Style *style;

  nStartCursor = FUNC4(editor, &from, &to);
  style = FUNC3(editor);
  FUNC6(editor, &editor->pCursors[nStartCursor], to-from, FALSE);
  FUNC5(editor, 0, str, len, style);
  FUNC7(style);
  /* drop temporary style if line end */
  /*
   * FIXME question: does abc\n mean: put abc,
   * clear temp style, put \n? (would require a change)
   */
  if (len>0 && str[len-1] == '\n')
    FUNC0(editor);
  FUNC1(editor);
  FUNC9(editor);
  if (!can_undo)
    FUNC2(editor);
  FUNC8(editor, FALSE);
}