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
struct TYPE_7__ {char current; int /*<<< orphan*/  buff; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,char*) ; 
 unsigned long FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned long FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static unsigned long FUNC7 (LexState *ls) {
  unsigned long r;
  int i = 4;  /* chars to be removed: '\', 'u', '{', and first digit */
  FUNC6(ls);  /* skip 'u' */
  FUNC0(ls, ls->current == '{', "missing '{'");
  r = FUNC1(ls);  /* must have at least one digit */
  while ((FUNC6(ls), FUNC2(ls->current))) {
    i++;
    r = (r << 4) + FUNC3(ls->current);
    FUNC0(ls, r <= 0x10FFFF, "UTF-8 value too large");
  }
  FUNC0(ls, ls->current == '}', "missing '}'");
  FUNC5(ls);  /* skip '}' */
  FUNC4(ls->buff, i);  /* remove saved chars from buffer */
  return r;
}