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
struct TYPE_7__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int MSize ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LUAL_BUFFERSIZE ; 
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(lua_State *L, FILE *fp)
{
  MSize m, n;
  for (m = LUAL_BUFFERSIZE, n = 0; ; m += m) {
    char *buf = FUNC1(L, m);
    n += (MSize)FUNC0(buf+n, 1, m-n, fp);
    if (n != m) {
      FUNC4(L, L->top++, FUNC3(L, buf, (size_t)n));
      FUNC2(L);
      return;
    }
  }
}