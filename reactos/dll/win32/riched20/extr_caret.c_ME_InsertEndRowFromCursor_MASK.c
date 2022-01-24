#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;

/* Variables and functions */
 int /*<<< orphan*/  MERF_ENDROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(ME_TextEditor *editor, int nCursor)
{
  ME_Style              *pStyle = FUNC1(editor, nCursor);
  WCHAR                 space = ' ';

  /* FIXME no no no */
  if (FUNC3(editor))
    FUNC0(editor);

  FUNC2(editor, nCursor, &space, 1, pStyle,
                                  MERF_ENDROW);
  FUNC4(pStyle);
}