#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;

/* Type definitions */
struct TYPE_25__ {int token; } ;
struct TYPE_27__ {int linenumber; TYPE_11__* fs; TYPE_1__ t; } ;
struct TYPE_26__ {scalar_t__ maxstacksize; } ;
struct TYPE_24__ {scalar_t__ freereg; scalar_t__ nactvar; TYPE_2__* f; } ;
typedef  TYPE_3__ LexState ;

/* Variables and functions */
#define  TK_BREAK 138 
#define  TK_DBCOLON 137 
#define  TK_DO 136 
 int /*<<< orphan*/  TK_END ; 
#define  TK_FOR 135 
#define  TK_FUNCTION 134 
#define  TK_GOTO 133 
#define  TK_IF 132 
#define  TK_LOCAL 131 
#define  TK_REPEAT 130 
#define  TK_RETURN 129 
#define  TK_WHILE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC20 (LexState *ls) {
  int line = ls->linenumber;  /* may be needed for error messages */
  FUNC2(ls);
  switch (ls->t.token) {
    case ';': {  /* stat -> ';' (empty statement) */
      FUNC13(ls);  /* skip ';' */
      break;
    }
    case TK_IF: {  /* stat -> ifstat */
      FUNC7(ls, line);
      break;
    }
    case TK_WHILE: {  /* stat -> whilestat */
      FUNC19(ls, line);
      break;
    }
    case TK_DO: {  /* stat -> DO block END */
      FUNC13(ls);  /* skip DO */
      FUNC0(ls);
      FUNC1(ls, TK_END, TK_DO, line);
      break;
    }
    case TK_FOR: {  /* stat -> forstat */
      FUNC4(ls, line);
      break;
    }
    case TK_REPEAT: {  /* stat -> repeatstat */
      FUNC15(ls, line);
      break;
    }
    case TK_FUNCTION: {  /* stat -> funcstat */
      FUNC5(ls, line);
      break;
    }
    case TK_LOCAL: {  /* stat -> localstat */
      FUNC13(ls);  /* skip LOCAL */
      if (FUNC18(ls, TK_FUNCTION))  /* local function? */
        FUNC10(ls);
      else
        FUNC11(ls);
      break;
    }
    case TK_DBCOLON: {  /* stat -> label */
      FUNC13(ls);  /* skip double colon */
      FUNC8(ls, FUNC17(ls), line);
      break;
    }
    case TK_RETURN: {  /* stat -> retstat */
      FUNC13(ls);  /* skip RETURN */
      FUNC16(ls);
      break;
    }
    case TK_BREAK:   /* stat -> breakstat */
    case TK_GOTO: {  /* stat -> 'goto' NAME */
      FUNC6(ls, FUNC12(ls->fs));
      break;
    }
    default: {  /* stat -> func | assignment */
      FUNC3(ls);
      break;
    }
  }
  FUNC14(ls->fs->f->maxstacksize >= ls->fs->freereg &&
             ls->fs->freereg >= ls->fs->nactvar);
  ls->fs->freereg = ls->fs->nactvar;  /* free registers */
  FUNC9(ls);
}