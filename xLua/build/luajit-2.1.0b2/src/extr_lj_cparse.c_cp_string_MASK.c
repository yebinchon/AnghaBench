#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  id; scalar_t__ i32; } ;
struct TYPE_9__ {char c; TYPE_1__ val; int /*<<< orphan*/  sb; int /*<<< orphan*/  L; int /*<<< orphan*/  str; } ;
typedef  int /*<<< orphan*/  CPToken ;
typedef  TYPE_2__ CPState ;
typedef  char CPChar ;

/* Variables and functions */
 int /*<<< orphan*/  CTID_INT32 ; 
 int /*<<< orphan*/  CTOK_EOF ; 
 int /*<<< orphan*/  CTOK_INTEGER ; 
 int /*<<< orphan*/  CTOK_STRING ; 
 int /*<<< orphan*/  LJ_ERR_XSTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CPToken FUNC9(CPState *cp)
{
  CPChar delim = cp->c;
  FUNC2(cp);
  while (cp->c != delim) {
    CPChar c = cp->c;
    if (c == '\0') FUNC1(cp, CTOK_EOF, LJ_ERR_XSTR);
    if (c == '\\') {
      c = FUNC2(cp);
      switch (c) {
      case '\0': FUNC1(cp, CTOK_EOF, LJ_ERR_XSTR); break;
      case 'a': c = '\a'; break;
      case 'b': c = '\b'; break;
      case 'f': c = '\f'; break;
      case 'n': c = '\n'; break;
      case 'r': c = '\r'; break;
      case 't': c = '\t'; break;
      case 'v': c = '\v'; break;
      case 'e': c = 27; break;
      case 'x':
	c = 0;
	while (FUNC6(FUNC2(cp)))
	  c = (c<<4) + (FUNC5(cp->c) ? cp->c-'0' : (cp->c&15)+9);
	FUNC3(cp, (c & 0xff));
	continue;
      default:
	if (FUNC5(c)) {
	  c -= '0';
	  if (FUNC5(FUNC2(cp))) {
	    c = c*8 + (cp->c - '0');
	    if (FUNC5(FUNC2(cp))) {
	      c = c*8 + (cp->c - '0');
	      FUNC2(cp);
	    }
	  }
	  FUNC3(cp, (c & 0xff));
	  continue;
	}
	break;
      }
    }
    FUNC3(cp, c);
    FUNC2(cp);
  }
  FUNC2(cp);
  if (delim == '"') {
    cp->str = FUNC4(cp->L, &cp->sb);
    return CTOK_STRING;
  } else {
    if (FUNC8(&cp->sb) != 1) FUNC0(cp, '\'');
    cp->val.i32 = (int32_t)(char)*FUNC7(&cp->sb);
    cp->val.id = CTID_INT32;
    return CTOK_INTEGER;
  }
}