#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* fs; int /*<<< orphan*/  tok; } ;
struct TYPE_8__ {scalar_t__ framesize; scalar_t__ freereg; scalar_t__ nactvar; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(LexState *ls)
{
  int islast = 0;
  FUNC4(ls);
  while (!islast && !FUNC2(ls->tok)) {
    islast = FUNC3(ls);
    FUNC0(ls, ';');
    FUNC1(ls->fs->framesize >= ls->fs->freereg &&
	       ls->fs->freereg >= ls->fs->nactvar);
    ls->fs->freereg = ls->fs->nactvar;  /* Free registers after each stmt. */
  }
  FUNC5(ls);
}