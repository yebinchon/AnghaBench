#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* bl; } ;
struct TYPE_7__ {TYPE_5__* fs; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FSCOPE_BREAK ; 
 int /*<<< orphan*/  NAME_BREAK ; 
 int /*<<< orphan*/  VSTACK_GOTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(LexState *ls)
{
  ls->fs->bl->flags |= FSCOPE_BREAK;
  FUNC1(ls, NAME_BREAK, VSTACK_GOTO, FUNC0(ls->fs));
}