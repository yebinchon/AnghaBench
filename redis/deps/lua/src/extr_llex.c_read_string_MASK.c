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
struct TYPE_12__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_11__ {int /*<<< orphan*/  ts; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int /*<<< orphan*/  TK_EOS ; 
 int /*<<< orphan*/  TK_STRING ; 
 int UCHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC9 (LexState *ls, int del, SemInfo *seminfo) {
  FUNC8(ls);
  while (ls->current != del) {
    switch (ls->current) {
      case EOZ:
        FUNC2(ls, "unfinished string", TK_EOS);
        continue;  /* to avoid warnings */
      case '\n':
      case '\r':
        FUNC2(ls, "unfinished string", TK_STRING);
        continue;  /* to avoid warnings */
      case '\\': {
        int c;
        FUNC6(ls);  /* do not save the `\' */
        switch (ls->current) {
          case 'a': c = '\a'; break;
          case 'b': c = '\b'; break;
          case 'f': c = '\f'; break;
          case 'n': c = '\n'; break;
          case 'r': c = '\r'; break;
          case 't': c = '\t'; break;
          case 'v': c = '\v'; break;
          case '\n':  /* go through */
          case '\r': FUNC7(ls, '\n'); FUNC0(ls); continue;
          case EOZ: continue;  /* will raise an error next loop */
          default: {
            if (!FUNC1(ls->current))
              FUNC8(ls);  /* handles \\, \", \', and \? */
            else {  /* \xxx */
              int i = 0;
              c = 0;
              do {
                c = 10*c + (ls->current-'0');
                FUNC6(ls);
              } while (++i<3 && FUNC1(ls->current));
              if (c > UCHAR_MAX)
                FUNC2(ls, "escape sequence too large", TK_STRING);
              FUNC7(ls, c);
            }
            continue;
          }
        }
        FUNC7(ls, c);
        FUNC6(ls);
        continue;
      }
      default:
        FUNC8(ls);
    }
  }
  FUNC8(ls);  /* skip delimiter */
  seminfo->ts = FUNC3(ls, FUNC4(ls->buff) + 1,
                                   FUNC5(ls->buff) - 2);
}