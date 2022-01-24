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
struct TYPE_2__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( lua_State *L )
{
    stream_t *s = (stream_t *)FUNC6(L);
    int n = FUNC1( L, 1 );
    char *buf = FUNC4(n);

    if (buf != NULL)
    {
        ssize_t val = FUNC5(s->s, buf, n);
        if (val > 0)
            FUNC2(L, buf, val);
        else
            FUNC3( L );
        FUNC0(buf);
    }
    else
        FUNC3( L );

    return 1;
}