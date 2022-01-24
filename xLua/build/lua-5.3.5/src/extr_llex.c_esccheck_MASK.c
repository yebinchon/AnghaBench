#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ current; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 scalar_t__ EOZ ; 
 int /*<<< orphan*/  TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2 (LexState *ls, int c, const char *msg) {
  if (!c) {
    if (ls->current != EOZ)
      FUNC1(ls);  /* add current to buffer for error message */
    FUNC0(ls, msg, TK_STRING);
  }
}