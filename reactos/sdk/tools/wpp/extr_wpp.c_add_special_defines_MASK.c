#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_3__ {void* type; } ;
typedef  TYPE_1__ pp_entry_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 void* def_special ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    time_t now = FUNC3(NULL);
    pp_entry_t *ppp;
    char buf[32];

    FUNC2(buf, sizeof(buf), "\"%b %d %Y\"", FUNC0(&now));
    FUNC1( "__DATE__", buf );

    FUNC2(buf, sizeof(buf), "\"%H:%M:%S\"", FUNC0(&now));
    FUNC1( "__TIME__", buf );

    ppp = FUNC1( "__FILE__", "" );
    if(ppp)
        ppp->type = def_special;

    ppp = FUNC1( "__LINE__", "" );
    if(ppp)
        ppp->type = def_special;
}