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
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  int BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char) ; 

__attribute__((used)) static BCReg FUNC3(LexState *ls, ExpDesc *v)
{
  BCReg n = 1;
  FUNC0(ls, v);
  while (FUNC2(ls, ',')) {
    FUNC1(ls->fs, v);
    FUNC0(ls, v);
    n++;
  }
  return n;
}