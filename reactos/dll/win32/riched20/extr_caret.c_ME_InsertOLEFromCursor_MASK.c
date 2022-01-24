#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct re_object {int /*<<< orphan*/  entry; } ;
typedef  char WCHAR ;
struct TYPE_12__ {struct re_object* reobj; } ;
struct TYPE_13__ {TYPE_1__ run; } ;
struct TYPE_15__ {TYPE_2__ member; } ;
struct TYPE_14__ {int /*<<< orphan*/  reobj_list; } ;
typedef  int /*<<< orphan*/  REOBJECT ;
typedef  TYPE_3__ ME_TextEditor ;
typedef  int /*<<< orphan*/  ME_Style ;
typedef  TYPE_4__ ME_DisplayItem ;

/* Variables and functions */
 int /*<<< orphan*/  MERF_GRAPHICS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 struct re_object* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(ME_TextEditor *editor, const REOBJECT* reo, int nCursor)
{
  ME_Style              *pStyle = FUNC1(editor, nCursor);
  ME_DisplayItem        *di;
  WCHAR                 space = ' ';
  ME_DisplayItem        *di_prev = NULL;
  struct re_object      *reobj_prev = NULL;
  
  /* FIXME no no no */
  if (FUNC3(editor))
    FUNC0(editor);

  di = FUNC2(editor, nCursor, &space, 1, pStyle,
                                       MERF_GRAPHICS);
  di->member.run.reobj = FUNC6(reo);

  di_prev = di;
  while (FUNC4(NULL, &di_prev, TRUE))
  {
    if (di_prev->member.run.reobj)
    {
      reobj_prev = di_prev->member.run.reobj;
      break;
    }
  }
  if (reobj_prev)
    FUNC7(&reobj_prev->entry, &di->member.run.reobj->entry);
  else
    FUNC8(&editor->reobj_list, &di->member.run.reobj->entry);

  FUNC5(pStyle);
}