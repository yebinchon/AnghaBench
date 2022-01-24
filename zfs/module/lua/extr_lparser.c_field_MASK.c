#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ConsControl {int dummy; } ;
struct TYPE_7__ {int token; } ;
struct TYPE_8__ {TYPE_1__ t; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  TK_NAME 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct ConsControl*) ; 
 char FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ConsControl*) ; 

__attribute__((used)) static void FUNC3 (LexState *ls, struct ConsControl *cc) {
  /* field -> listfield | recfield */
  switch(ls->t.token) {
    case TK_NAME: {  /* may be 'listfield' or 'recfield' */
      if (FUNC1(ls) != '=')  /* expression? */
        FUNC0(ls, cc);
      else
        FUNC2(ls, cc);
      break;
    }
    case '[': {
      FUNC2(ls, cc);
      break;
    }
    default: {
      FUNC0(ls, cc);
      break;
    }
  }
}