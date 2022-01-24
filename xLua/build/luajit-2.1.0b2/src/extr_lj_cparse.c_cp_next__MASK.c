#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int c; int /*<<< orphan*/  sb; } ;
typedef  char CPToken ;
typedef  TYPE_1__ CPState ;

/* Variables and functions */
 char CTOK_ANDAND ; 
 char CTOK_DEREF ; 
 char CTOK_EOF ; 
 char CTOK_EQ ; 
 char CTOK_GE ; 
 char CTOK_LE ; 
 char CTOK_NE ; 
 char CTOK_OROR ; 
 char CTOK_SHL ; 
 char CTOK_SHR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char FUNC2 (TYPE_1__*) ; 
 char FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char FUNC5 (TYPE_1__*) ; 
 char FUNC6 (TYPE_1__*) ; 
 char FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static CPToken FUNC11(CPState *cp)
{
  FUNC8(&cp->sb);
  for (;;) {
    if (FUNC10(cp->c))
      return FUNC9(cp->c) ? FUNC5(cp) : FUNC3(cp);
    switch (cp->c) {
    case '\n': case '\r': FUNC4(cp);  /* fallthrough. */
    case ' ': case '\t': case '\v': case '\f': FUNC2(cp); break;
    case '"': case '\'': return FUNC7(cp);
    case '/':
      if (FUNC2(cp) == '*') FUNC0(cp);
      else if (cp->c == '/') FUNC1(cp);
      else return '/';
      break;
    case '|':
      if (FUNC2(cp) != '|') return '|'; FUNC2(cp); return CTOK_OROR;
    case '&':
      if (FUNC2(cp) != '&') return '&'; FUNC2(cp); return CTOK_ANDAND;
    case '=':
      if (FUNC2(cp) != '=') return '='; FUNC2(cp); return CTOK_EQ;
    case '!':
      if (FUNC2(cp) != '=') return '!'; FUNC2(cp); return CTOK_NE;
    case '<':
      if (FUNC2(cp) == '=') { FUNC2(cp); return CTOK_LE; }
      else if (cp->c == '<') { FUNC2(cp); return CTOK_SHL; }
      return '<';
    case '>':
      if (FUNC2(cp) == '=') { FUNC2(cp); return CTOK_GE; }
      else if (cp->c == '>') { FUNC2(cp); return CTOK_SHR; }
      return '>';
    case '-':
      if (FUNC2(cp) != '>') return '-'; FUNC2(cp); return CTOK_DEREF;
    case '$':
      return FUNC6(cp);
    case '\0': return CTOK_EOF;
    default: { CPToken c = cp->c; FUNC2(cp); return c; }
    }
  }
}