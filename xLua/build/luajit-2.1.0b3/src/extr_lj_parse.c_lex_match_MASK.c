#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ linenumber; int /*<<< orphan*/  tok; } ;
typedef  int /*<<< orphan*/  LexToken ;
typedef  TYPE_1__ LexState ;
typedef  scalar_t__ BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_XMATCH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,scalar_t__) ; 
 char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(LexState *ls, LexToken what, LexToken who, BCLine line)
{
  if (!FUNC1(ls, what)) {
    if (line == ls->linenumber) {
      FUNC0(ls, what);
    } else {
      const char *swhat = FUNC3(ls, what);
      const char *swho = FUNC3(ls, who);
      FUNC2(ls, ls->tok, LJ_ERR_XMATCH, swhat, swho, line);
    }
  }
}