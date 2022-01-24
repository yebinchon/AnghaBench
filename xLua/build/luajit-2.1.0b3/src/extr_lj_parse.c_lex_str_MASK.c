#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tok; int /*<<< orphan*/  tokval; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
 scalar_t__ LJ_52 ; 
 scalar_t__ TK_goto ; 
 scalar_t__ TK_name ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCstr *FUNC3(LexState *ls)
{
  GCstr *s;
  if (ls->tok != TK_name && (LJ_52 || ls->tok != TK_goto))
    FUNC0(ls, TK_name);
  s = FUNC2(&ls->tokval);
  FUNC1(ls);
  return s;
}