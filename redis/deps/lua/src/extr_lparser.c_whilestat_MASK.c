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
struct TYPE_8__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  TK_DO ; 
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_WHILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11 (LexState *ls, int line) {
  /* whilestat -> WHILE cond DO block END */
  FuncState *fs = ls->fs;
  int whileinit;
  int condexit;
  BlockCnt bl;
  FUNC10(ls);  /* skip WHILE */
  whileinit = FUNC6(fs);
  condexit = FUNC3(ls);
  FUNC4(fs, &bl, 1);
  FUNC2(ls, TK_DO);
  FUNC0(ls);
  FUNC8(fs, FUNC7(fs), whileinit);
  FUNC1(ls, TK_END, TK_WHILE, line);
  FUNC5(fs);
  FUNC9(fs, condexit);  /* false conditions finish the loop */
}