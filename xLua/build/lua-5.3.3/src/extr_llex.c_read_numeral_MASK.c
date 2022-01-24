#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_9__ {int /*<<< orphan*/  r; int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int TK_FLT ; 
 int TK_INT ; 
 scalar_t__ FUNC0 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13 (LexState *ls, SemInfo *seminfo) {
  TValue obj;
  const char *expo = "Ee";
  int first = ls->current;
  FUNC8(FUNC4(ls->current));
  FUNC10(ls);
  if (first == '0' && FUNC0(ls, "xX"))  /* hexadecimal? */
    expo = "Pp";
  for (;;) {
    if (FUNC0(ls, expo))  /* exponent part? */
      FUNC0(ls, "-+");  /* optional exponent sign */
    if (FUNC5(ls->current))
      FUNC10(ls);
    else if (ls->current == '.')
      FUNC10(ls);
    else break;
  }
  FUNC9(ls, '\0');
  if (FUNC6(FUNC7(ls->buff), &obj) == 0)  /* format error? */
    FUNC3(ls, "malformed number", TK_FLT);
  if (FUNC12(&obj)) {
    seminfo->i = FUNC2(&obj);
    return TK_INT;
  }
  else {
    FUNC8(FUNC11(&obj));
    seminfo->r = FUNC1(&obj);
    return TK_FLT;
  }
}