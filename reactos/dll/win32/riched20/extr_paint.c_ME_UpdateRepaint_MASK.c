#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nEventMask; int /*<<< orphan*/  texthost; int /*<<< orphan*/ * pCursors; } ;
typedef  TYPE_1__ ME_TextEditor ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ENM_CHANGE ; 
 int /*<<< orphan*/  EN_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void FUNC6(ME_TextEditor *editor, BOOL update_now)
{
  /* Should be called whenever the contents of the control have changed */
  BOOL wrappedParagraphs;

  wrappedParagraphs = FUNC5(editor);
  if (wrappedParagraphs)
    FUNC4(editor);

  /* Ensure that the cursor is visible */
  FUNC1(editor, &editor->pCursors[0]);

  FUNC0(editor->texthost, update_now);

  FUNC3(editor);

  /* send EN_CHANGE if the event mask asks for it */
  if(editor->nEventMask & ENM_CHANGE)
  {
    editor->nEventMask &= ~ENM_CHANGE;
    FUNC2(editor, EN_CHANGE);
    editor->nEventMask |= ENM_CHANGE;
  }
}