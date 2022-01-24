#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ reserved; } ;
struct TYPE_16__ {int c; int /*<<< orphan*/  sb; int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  char LexToken ;
typedef  TYPE_1__ LexState ;
typedef  char LexChar ;
typedef  TYPE_2__ GCstr ;

/* Variables and functions */
#define  LEX_EOF 128 
 int /*<<< orphan*/  LJ_ERR_XLDELIM ; 
 char TK_OFS ; 
 char TK_concat ; 
 char TK_dots ; 
 char TK_eof ; 
 char TK_eq ; 
 char TK_ge ; 
 char TK_label ; 
 char TK_le ; 
 char TK_name ; 
 char TK_ne ; 
 char TK_number ; 
 char TK_string ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static LexToken FUNC16(LexState *ls, TValue *tv)
{
  FUNC8(&ls->sb);
  for (;;) {
    if (FUNC10(ls->c)) {
      GCstr *s;
      if (FUNC9(ls->c)) {  /* Numeric literal. */
	FUNC4(ls, tv);
	return TK_number;
      }
      /* Identifier or reserved word. */
      do {
	FUNC5(ls);
      } while (FUNC10(ls->c));
      s = FUNC12(ls, FUNC13(&ls->sb), FUNC14(&ls->sb));
      FUNC15(ls->L, tv, s);
      if (s->reserved > 0)  /* Reserved word? */
	return TK_OFS + s->reserved;
      return TK_name;
    }
    switch (ls->c) {
    case '\n':
    case '\r':
      FUNC2(ls);
      continue;
    case ' ':
    case '\t':
    case '\v':
    case '\f':
      FUNC3(ls);
      continue;
    case '-':
      FUNC3(ls);
      if (ls->c != '-') return '-';
      FUNC3(ls);
      if (ls->c == '[') {  /* Long comment "--[=*[...]=*]". */
	int sep = FUNC6(ls);
	FUNC8(&ls->sb);  /* `lex_skipeq' may dirty the buffer */
	if (sep >= 0) {
	  FUNC1(ls, NULL, sep);
	  FUNC8(&ls->sb);
	  continue;
	}
      }
      /* Short comment "--.*\n". */
      while (!FUNC0(ls) && ls->c != LEX_EOF)
	FUNC3(ls);
      continue;
    case '[': {
      int sep = FUNC6(ls);
      if (sep >= 0) {
	FUNC1(ls, tv, sep);
	return TK_string;
      } else if (sep == -1) {
	return '[';
      } else {
	FUNC11(ls, TK_string, LJ_ERR_XLDELIM);
	continue;
      }
      }
    case '=':
      FUNC3(ls);
      if (ls->c != '=') return '='; else { FUNC3(ls); return TK_eq; }
    case '<':
      FUNC3(ls);
      if (ls->c != '=') return '<'; else { FUNC3(ls); return TK_le; }
    case '>':
      FUNC3(ls);
      if (ls->c != '=') return '>'; else { FUNC3(ls); return TK_ge; }
    case '~':
      FUNC3(ls);
      if (ls->c != '=') return '~'; else { FUNC3(ls); return TK_ne; }
    case ':':
      FUNC3(ls);
      if (ls->c != ':') return ':'; else { FUNC3(ls); return TK_label; }
    case '"':
    case '\'':
      FUNC7(ls, tv);
      return TK_string;
    case '.':
      if (FUNC5(ls) == '.') {
	FUNC3(ls);
	if (ls->c == '.') {
	  FUNC3(ls);
	  return TK_dots;   /* ... */
	}
	return TK_concat;   /* .. */
      } else if (!FUNC9(ls->c)) {
	return '.';
      } else {
	FUNC4(ls, tv);
	return TK_number;
      }
    case LEX_EOF:
      return TK_eof;
    default: {
      LexChar c = ls->c;
      FUNC3(ls);
      return c;  /* Single-char tokens (+ - / ...). */
    }
    }
  }
}