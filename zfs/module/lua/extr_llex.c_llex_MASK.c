#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_25__ {TYPE_2__* ts; } ;
struct TYPE_23__ {int /*<<< orphan*/  extra; } ;
struct TYPE_24__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;
typedef  TYPE_3__ SemInfo ;
typedef  TYPE_4__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int FIRST_RESERVED ; 
 int TK_CONCAT ; 
 int TK_DBCOLON ; 
 int TK_DOTS ; 
 int TK_EOS ; 
 int TK_EQ ; 
 int TK_GE ; 
 int TK_LE ; 
 int TK_NAME ; 
 int TK_NE ; 
 int TK_NUMBER ; 
 int TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 TYPE_2__* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,char,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC18 (LexState *ls, SemInfo *seminfo) {
  FUNC11(ls->buff);
  for (;;) {
    switch (ls->current) {
      case '\n': case '\r': {  /* line breaks */
        FUNC2(ls);
        break;
      }
      case ' ': case '\f': case '\t': case '\v': {  /* spaces */
        FUNC12(ls);
        break;
      }
      case '-': {  /* '-' or '--' (comment) */
        FUNC12(ls);
        if (ls->current != '-') return '-';
        /* else is a comment */
        FUNC12(ls);
        if (ls->current == '[') {  /* long comment? */
          int sep = FUNC17(ls);
          FUNC11(ls->buff);  /* `skip_sep' may dirty the buffer */
          if (sep >= 0) {
            FUNC13(ls, NULL, sep);  /* skip long comment */
            FUNC11(ls->buff);  /* previous call may dirty the buff. */
            break;
          }
        }
        /* else short comment */
        while (!FUNC1(ls) && ls->current != EOZ)
          FUNC12(ls);  /* skip until end of line (or end of file) */
        break;
      }
      case '[': {  /* long string or simply '[' */
        int sep = FUNC17(ls);
        if (sep >= 0) {
          FUNC13(ls, seminfo, sep);
          return TK_STRING;
        } else if (sep == -1) {
		return '[';
        } else {
		FUNC4(ls, "invalid long string delimiter", TK_STRING);
		break;
	}
      }
      case '=': {
        FUNC12(ls);
        if (ls->current != '=') return '=';
        else { FUNC12(ls); return TK_EQ; }
      }
      case '<': {
        FUNC12(ls);
        if (ls->current != '=') return '<';
        else { FUNC12(ls); return TK_LE; }
      }
      case '>': {
        FUNC12(ls);
        if (ls->current != '=') return '>';
        else { FUNC12(ls); return TK_GE; }
      }
      case '~': {
        FUNC12(ls);
        if (ls->current != '=') return '~';
        else { FUNC12(ls); return TK_NE; }
      }
      case ':': {
        FUNC12(ls);
        if (ls->current != ':') return ':';
        else { FUNC12(ls); return TK_DBCOLON; }
      }
      case '"': case '\'': {  /* short literal strings */
        FUNC15(ls, ls->current, seminfo);
        return TK_STRING;
      }
      case '.': {  /* '.', '..', '...', or number */
        FUNC16(ls);
        if (FUNC0(ls, ".")) {
          if (FUNC0(ls, "."))
            return TK_DOTS;   /* '...' */
          else return TK_CONCAT;   /* '..' */
        }
        else if (!FUNC5(ls->current)) return '.';
        /* else go through */
      }
      /* FALLTHROUGH */
      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9': {
        FUNC14(ls, seminfo);
        return TK_NUMBER;
      }
      case EOZ: {
        return TK_EOS;
      }
      default: {
        if (FUNC7(ls->current)) {  /* identifier or reserved word? */
          TString *ts;
          do {
            FUNC16(ls);
          } while (FUNC6(ls->current));
          ts = FUNC8(ls, FUNC9(ls->buff),
                                  FUNC10(ls->buff));
          seminfo->ts = ts;
          if (FUNC3(ts))  /* reserved word? */
            return ts->tsv.extra - 1 + FIRST_RESERVED;
          else {
            return TK_NAME;
          }
        }
        else {  /* single-char tokens (+ - / ...) */
          int c = ls->current;
          FUNC12(ls);
          return c;
        }
      }
    }
  }
}