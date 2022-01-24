#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_18__ {TYPE_1__* f; } ;
struct TYPE_17__ {int /*<<< orphan*/  linenumber; } ;
struct TYPE_16__ {int linedefined; int /*<<< orphan*/  lastlinedefined; } ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 (LexState *ls, expdesc *e, int needself, int line) {
  /* body ->  `(' parlist `)' chunk END */
  FuncState new_fs;
  FUNC6(ls, &new_fs);
  new_fs.f->linedefined = line;
  FUNC2(ls, '(');
  if (needself) {
    FUNC5(ls, "self", 0);
    FUNC0(ls, 1);
  }
  FUNC7(ls);
  FUNC2(ls, ')');
  FUNC3(ls);
  new_fs.f->lastlinedefined = ls->linenumber;
  FUNC1(ls, TK_END, TK_FUNCTION, line);
  FUNC4(ls);
  FUNC8(ls, &new_fs, e);
}