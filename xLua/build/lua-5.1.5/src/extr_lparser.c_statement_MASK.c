#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int token; } ;
struct TYPE_19__ {int linenumber; TYPE_1__ t; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  TK_BREAK 136 
#define  TK_DO 135 
 int /*<<< orphan*/  TK_END ; 
#define  TK_FOR 134 
#define  TK_FUNCTION 133 
#define  TK_IF 132 
#define  TK_LOCAL 131 
#define  TK_REPEAT 130 
#define  TK_RETURN 129 
#define  TK_WHILE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC14 (LexState *ls) {
  int line = ls->linenumber;  /* may be needed for error messages */
  switch (ls->t.token) {
    case TK_IF: {  /* stat -> ifstat */
      FUNC6(ls, line);
      return 0;
    }
    case TK_WHILE: {  /* stat -> whilestat */
      FUNC13(ls, line);
      return 0;
    }
    case TK_DO: {  /* stat -> DO block END */
      FUNC9(ls);  /* skip DO */
      FUNC0(ls);
      FUNC2(ls, TK_END, TK_DO, line);
      return 0;
    }
    case TK_FOR: {  /* stat -> forstat */
      FUNC4(ls, line);
      return 0;
    }
    case TK_REPEAT: {  /* stat -> repeatstat */
      FUNC10(ls, line);
      return 0;
    }
    case TK_FUNCTION: {
      FUNC5(ls, line);  /* stat -> funcstat */
      return 0;
    }
    case TK_LOCAL: {  /* stat -> localstat */
      FUNC9(ls);  /* skip LOCAL */
      if (FUNC12(ls, TK_FUNCTION))  /* local function? */
        FUNC7(ls);
      else
        FUNC8(ls);
      return 0;
    }
    case TK_RETURN: {  /* stat -> retstat */
      FUNC11(ls);
      return 1;  /* must be last statement */
    }
    case TK_BREAK: {  /* stat -> breakstat */
      FUNC9(ls);  /* skip BREAK */
      FUNC1(ls);
      return 1;  /* must be last statement */
    }
    default: {
      FUNC3(ls);
      return 0;  /* to avoid warnings */
    }
  }
}