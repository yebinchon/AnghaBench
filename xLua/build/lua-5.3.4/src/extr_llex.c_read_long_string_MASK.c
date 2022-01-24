#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int linenumber; int current; int /*<<< orphan*/  buff; int /*<<< orphan*/  L; } ;
struct TYPE_13__ {int /*<<< orphan*/  ts; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int /*<<< orphan*/  TK_EOS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC12 (LexState *ls, SemInfo *seminfo, int sep) {
  int line = ls->linenumber;  /* initial line (for error message) */
  FUNC10(ls);  /* skip 2nd '[' */
  if (FUNC0(ls))  /* string starts with a newline? */
    FUNC1(ls);  /* skip it */
  for (;;) {
    switch (ls->current) {
      case EOZ: {  /* error */
        const char *what = (seminfo ? "string" : "comment");
        const char *msg = FUNC3(ls->L,
                     "unfinished long %s (starting at line %d)", what, line);
        FUNC2(ls, msg, TK_EOS);
        break;  /* to avoid warnings */
      }
      case ']': {
        if (FUNC11(ls) == sep) {
          FUNC10(ls);  /* skip 2nd ']' */
          goto endloop;
        }
        break;
      }
      case '\n': case '\r': {
        FUNC9(ls, '\n');
        FUNC1(ls);
        if (!seminfo) FUNC7(ls->buff);  /* avoid wasting space */
        break;
      }
      default: {
        if (seminfo) FUNC10(ls);
        else FUNC8(ls);
      }
    }
  } endloop:
  if (seminfo)
    seminfo->ts = FUNC4(ls, FUNC5(ls->buff) + (2 + sep),
                                     FUNC6(ls->buff) - 2*(2 + sep));
}