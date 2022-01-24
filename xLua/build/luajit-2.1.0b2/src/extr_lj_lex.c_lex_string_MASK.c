#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int c; int /*<<< orphan*/  sb; int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ LexState ;
typedef  int LexChar ;

/* Variables and functions */
#define  LEX_EOF 128 
 int /*<<< orphan*/  LJ_ERR_XESC ; 
 int /*<<< orphan*/  LJ_ERR_XSTR ; 
 int /*<<< orphan*/  TK_eof ; 
 int /*<<< orphan*/  TK_string ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(LexState *ls, TValue *tv)
{
  LexChar delim = ls->c;  /* Delimiter is '\'' or '"'. */
  FUNC4(ls);
  while (ls->c != delim) {
    switch (ls->c) {
    case LEX_EOF:
      FUNC8(ls, TK_eof, LJ_ERR_XSTR);
      continue;
    case '\n':
    case '\r':
      FUNC8(ls, TK_string, LJ_ERR_XSTR);
      continue;
    case '\\': {
      LexChar c = FUNC2(ls);  /* Skip the '\\'. */
      switch (c) {
      case 'a': c = '\a'; break;
      case 'b': c = '\b'; break;
      case 'f': c = '\f'; break;
      case 'n': c = '\n'; break;
      case 'r': c = '\r'; break;
      case 't': c = '\t'; break;
      case 'v': c = '\v'; break;
      case 'x':  /* Hexadecimal escape '\xXX'. */
	c = (FUNC2(ls) & 15u) << 4;
	if (!FUNC5(ls->c)) {
	  if (!FUNC7(ls->c)) goto err_xesc;
	  c += 9 << 4;
	}
	c += (FUNC2(ls) & 15u);
	if (!FUNC5(ls->c)) {
	  if (!FUNC7(ls->c)) goto err_xesc;
	  c += 9;
	}
	break;
      case 'u':  /* Unicode escape '\u{XX...}'. */
	if (FUNC2(ls) != '{') goto err_xesc;
	FUNC2(ls);
	c = 0;
	do {
	  c = (c << 4) | (ls->c & 15u);
	  if (!FUNC5(ls->c)) {
	    if (!FUNC7(ls->c)) goto err_xesc;
	    c += 9;
	  }
	  if (c >= 0x110000) goto err_xesc;  /* Out of Unicode range. */
	} while (FUNC2(ls) != '}');
	if (c < 0x800) {
	  if (c < 0x80) break;
	  FUNC3(ls, 0xc0 | (c >> 6));
	} else {
	  if (c >= 0x10000) {
	    FUNC3(ls, 0xf0 | (c >> 18));
	    FUNC3(ls, 0x80 | ((c >> 12) & 0x3f));
	  } else {
	    if (c >= 0xd800 && c < 0xe000) goto err_xesc;  /* No surrogates. */
	    FUNC3(ls, 0xe0 | (c >> 12));
	  }
	  FUNC3(ls, 0x80 | ((c >> 6) & 0x3f));
	}
	c = 0x80 | (c & 0x3f);
	break;
      case 'z':  /* Skip whitespace. */
	FUNC2(ls);
	while (FUNC6(ls->c))
	  if (FUNC0(ls)) FUNC1(ls); else FUNC2(ls);
	continue;
      case '\n': case '\r': FUNC3(ls, '\n'); FUNC1(ls); continue;
      case '\\': case '\"': case '\'': break;
      case LEX_EOF: continue;
      default:
	if (!FUNC5(c))
	  goto err_xesc;
	c -= '0';  /* Decimal escape '\ddd'. */
	if (FUNC5(FUNC2(ls))) {
	  c = c*10 + (ls->c - '0');
	  if (FUNC5(FUNC2(ls))) {
	    c = c*10 + (ls->c - '0');
	    if (c > 255) {
	    err_xesc:
	      FUNC8(ls, TK_string, LJ_ERR_XESC);
	    }
	    FUNC2(ls);
	  }
	}
	FUNC3(ls, c);
	continue;
      }
      FUNC3(ls, c);
      FUNC2(ls);
      continue;
      }
    default:
      FUNC4(ls);
      break;
    }
  }
  FUNC4(ls);  /* Skip trailing delimiter. */
  FUNC12(ls->L, tv,
	  FUNC9(ls, FUNC10(&ls->sb)+1, FUNC11(&ls->sb)-2));
}