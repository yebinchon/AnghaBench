#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {int /*<<< orphan*/ * buff; } ;
typedef  int /*<<< orphan*/  CompileState ;

/* Variables and functions */
 scalar_t__ CHARSETINSTSIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t j ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (CompileState *compst, const byte *cs) {
  int p = FUNC0(compst);
  int i;
  for (i = 0; i < (int)CHARSETINSTSIZE - 1; i++)
    FUNC3(compst);  /* space for buffer */
  /* fill buffer with charset */
  FUNC2(j, FUNC1(compst, p).buff[j] = cs[j]);
}