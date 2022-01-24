#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int pc; TYPE_1__* bcbase; } ;
struct TYPE_11__ {char tok; TYPE_3__* fs; } ;
struct TYPE_10__ {int /*<<< orphan*/  line; } ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ FuncState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(LexState *ls, BCLine line)
{
  FuncState *fs;
  ExpDesc v, b;
  int needself = 0;
  FUNC2(ls);  /* Skip 'function'. */
  /* Parse function name. */
  FUNC4(ls, &v);
  while (ls->tok == '.')  /* Multiple dot-separated fields. */
    FUNC1(ls, &v);
  if (ls->tok == ':') {  /* Optional colon to signify method call. */
    needself = 1;
    FUNC1(ls, &v);
  }
  FUNC3(ls, &b, needself, line);
  fs = ls->fs;
  FUNC0(fs, &v, &b);
  fs->bcbase[fs->pc - 1].line = line;  /* Set line for the store. */
}