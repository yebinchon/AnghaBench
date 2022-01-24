#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_12__ {int linenumber; int lastline; int c; scalar_t__* p; scalar_t__* pe; int /*<<< orphan*/  lookahead; scalar_t__ tok; scalar_t__ sizebcstack; int /*<<< orphan*/ * bcstack; scalar_t__ vtop; scalar_t__ sizevstack; int /*<<< orphan*/ * vstack; int /*<<< orphan*/ * fs; TYPE_1__* L; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 scalar_t__ LEX_EOF ; 
 int /*<<< orphan*/  LJ_ERR_BCBAD ; 
 int /*<<< orphan*/  LUA_ERRSYNTAX ; 
 scalar_t__* LUA_SIGNATURE ; 
 int /*<<< orphan*/  TK_eof ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(lua_State *L, LexState *ls)
{
  int header = 0;
  ls->L = L;
  ls->fs = NULL;
  ls->pe = ls->p = NULL;
  ls->vstack = NULL;
  ls->sizevstack = 0;
  ls->vtop = 0;
  ls->bcstack = NULL;
  ls->sizebcstack = 0;
  ls->tok = 0;
  ls->lookahead = TK_eof;  /* No look-ahead token. */
  ls->linenumber = 1;
  ls->lastline = 1;
  FUNC2(ls);  /* Read-ahead first char. */
  if (ls->c == 0xef && ls->p + 2 <= ls->pe && (uint8_t)ls->p[0] == 0xbb &&
      (uint8_t)ls->p[1] == 0xbf) {  /* Skip UTF-8 BOM (if buffered). */
    ls->p += 2;
    FUNC2(ls);
    header = 1;
  }
  if (ls->c == '#') {  /* Skip POSIX #! header line. */
    do {
      FUNC2(ls);
      if (ls->c == LEX_EOF) return 0;
    } while (!FUNC0(ls));
    FUNC1(ls);
    header = 1;
  }
  if (ls->c == LUA_SIGNATURE[0]) {  /* Bytecode dump. */
    if (header) {
      /*
      ** Loading bytecode with an extra header is disabled for security
      ** reasons. This may circumvent the usual check for bytecode vs.
      ** Lua code by looking at the first char. Since this is a potential
      ** security violation no attempt is made to echo the chunkname either.
      */
      FUNC5(L, L->top++, FUNC3(L, LJ_ERR_BCBAD));
      FUNC4(L, LUA_ERRSYNTAX);
    }
    return 1;
  }
  return 0;
}