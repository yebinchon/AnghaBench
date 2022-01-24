#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_10__ {int /*<<< orphan*/  strempty; } ;
typedef  scalar_t__ MSize ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(lua_State *L, FILE *fp, MSize m)
{
  if (m) {
    char *buf = FUNC3(L, m);
    MSize n = (MSize)FUNC1(buf, 1, m, fp);
    FUNC6(L, L->top++, FUNC5(L, buf, (size_t)n));
    FUNC4(L);
    return (n > 0 || m == 0);
  } else {
    int c = FUNC2(fp);
    FUNC7(c, fp);
    FUNC6(L, L->top++, &FUNC0(L)->strempty);
    return (c != EOF);
  }
}