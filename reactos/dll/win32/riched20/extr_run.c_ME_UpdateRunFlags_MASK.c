#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nCharOfs; int nFlags; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  TYPE_1__ ME_Run ;

/* Variables and functions */
 int MERF_ENDWHITE ; 
 int MERF_HIDDEN ; 
 int MERF_NOTEXT ; 
 int MERF_SPLITTABLE ; 
 int MERF_STARTWHITE ; 
 int MERF_TABLESTART ; 
 int MERF_WHITESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void FUNC6(ME_TextEditor *editor, ME_Run *run)
{
  FUNC2(run->nCharOfs >= 0);

  if (FUNC1(run) || run->nFlags & MERF_TABLESTART)
    run->nFlags |= MERF_HIDDEN;
  else
    run->nFlags &= ~MERF_HIDDEN;

  if (FUNC5( run ))
    run->nFlags |= MERF_SPLITTABLE;
  else
    run->nFlags &= ~MERF_SPLITTABLE;

  if (!(run->nFlags & MERF_NOTEXT))
  {
    if (FUNC4( run ))
      run->nFlags |= MERF_WHITESPACE | MERF_STARTWHITE | MERF_ENDWHITE;
    else
    {
      run->nFlags &= ~MERF_WHITESPACE;

      if (FUNC0( *FUNC3( run, 0 ) ))
        run->nFlags |= MERF_STARTWHITE;
      else
        run->nFlags &= ~MERF_STARTWHITE;

      if (FUNC0( *FUNC3( run, run->len - 1 ) ))
        run->nFlags |= MERF_ENDWHITE;
      else
        run->nFlags &= ~MERF_ENDWHITE;
    }
  }
  else
    run->nFlags &= ~(MERF_WHITESPACE | MERF_STARTWHITE | MERF_ENDWHITE);
}