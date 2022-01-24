#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int FIRST_RESERVED ; 
 int TK_EOS ; 
 int FUNC0 (int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char** luaX_tokens ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

const char *FUNC3 (LexState *ls, int token) {
  if (token < FIRST_RESERVED) {  /* single-byte symbols? */
    FUNC2(token == FUNC0(token));
    return FUNC1(ls->L, "'%c'", token);
  }
  else {
    const char *s = luaX_tokens[token - FIRST_RESERVED];
    if (token < TK_EOS)  /* fixed format (symbols and reserved words)? */
      return FUNC1(ls->L, "'%s'", s);
    else  /* names, strings, and numerals */
      return s;
  }
}