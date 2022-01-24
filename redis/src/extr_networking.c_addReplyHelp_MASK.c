#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_9__ {TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_8__ {scalar_t__ ptr; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,int) ; 

void FUNC7(client *c, const char **help) {
    sds cmd = FUNC4((char*) c->argv[0]->ptr);
    void *blenp = FUNC0(c);
    int blen = 0;

    FUNC5(cmd);
    FUNC2(c,
        "%s <subcommand> arg arg ... arg. Subcommands are:",cmd);
    FUNC3(cmd);

    while (help[blen]) FUNC1(c,help[blen++]);

    blen++;  /* Account for the header line(s). */
    FUNC6(c,blenp,blen);
}