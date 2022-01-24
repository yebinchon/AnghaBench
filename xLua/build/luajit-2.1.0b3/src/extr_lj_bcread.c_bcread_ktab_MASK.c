#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  array; } ;
struct TYPE_9__ {int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ MSize ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static GCtab *FUNC8(LexState *ls)
{
  MSize narray = FUNC1(ls);
  MSize nhash = FUNC1(ls);
  GCtab *t = FUNC3(ls->L, narray, FUNC2(nhash));
  if (narray) {  /* Read array entries. */
    MSize i;
    TValue *o = FUNC7(t->array);
    for (i = 0; i < narray; i++, o++)
      FUNC0(ls, o);
  }
  if (nhash) {  /* Read hash entries. */
    MSize i;
    for (i = 0; i < nhash; i++) {
      TValue key;
      FUNC0(ls, &key);
      FUNC5(!FUNC6(&key));
      FUNC0(ls, FUNC4(ls->L, t, &key));
    }
  }
  return t;
}