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
struct TYPE_17__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_16__ {int /*<<< orphan*/  ts; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int /*<<< orphan*/  TK_EOS ; 
 int /*<<< orphan*/  TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC16 (LexState *ls, int del, SemInfo *seminfo) {
  FUNC14(ls);  /* keep delimiter (for error messages) */
  while (ls->current != del) {
    switch (ls->current) {
      case EOZ:
        FUNC3(ls, "unfinished string", TK_EOS);
        break;  /* to avoid warnings */
      case '\n':
      case '\r':
        FUNC3(ls, "unfinished string", TK_STRING);
        break;  /* to avoid warnings */
      case '\\': {  /* escape sequences */
        int c;  /* final character to be saved */
        FUNC14(ls);  /* keep '\\' for error messages */
        switch (ls->current) {
          case 'a': c = '\a'; goto read_save;
          case 'b': c = '\b'; goto read_save;
          case 'f': c = '\f'; goto read_save;
          case 'n': c = '\n'; goto read_save;
          case 'r': c = '\r'; goto read_save;
          case 't': c = '\t'; goto read_save;
          case 'v': c = '\v'; goto read_save;
          case 'x': c = FUNC12(ls); goto read_save;
          case 'u': FUNC15(ls);  goto no_save;
          case '\n': case '\r':
            FUNC2(ls); c = '\n'; goto only_save;
          case '\\': case '\"': case '\'':
            c = ls->current; goto read_save;
          case EOZ: goto no_save;  /* will raise an error next loop */
          case 'z': {  /* zap following span of spaces */
            FUNC9(ls->buff, 1);  /* remove '\\' */
            FUNC10(ls);  /* skip the 'z' */
            while (FUNC5(ls->current)) {
              if (FUNC0(ls)) FUNC2(ls);
              else FUNC10(ls);
            }
            goto no_save;
          }
          default: {
            FUNC1(ls, FUNC4(ls->current), "invalid escape sequence");
            c = FUNC11(ls);  /* digital escape '\ddd' */
            goto only_save;
          }
        }
       read_save:
         FUNC10(ls);
         /* go through */
       only_save:
         FUNC9(ls->buff, 1);  /* remove '\\' */
         FUNC13(ls, c);
         /* go through */
       no_save: break;
      }
      default:
        FUNC14(ls);
    }
  }
  FUNC14(ls);  /* skip delimiter */
  seminfo->ts = FUNC6(ls, FUNC7(ls->buff) + 1,
                                   FUNC8(ls->buff) - 2);
}