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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lwCanvas ;
struct TYPE_5__ {int argc; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 char* REDIS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (long,long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(client *c) {
    long cols = 80;
    long rows = 20;

    /* Parse the optional arguments if any. */
    if (c->argc > 1 &&
        FUNC2(c,c->argv[1],&cols,NULL) != C_OK)
        return;

    if (c->argc > 2 &&
        FUNC2(c,c->argv[2],&rows,NULL) != C_OK)
        return;

    /* Limits. We want LOLWUT to be always reasonably fast and cheap to execute
     * so we have maximum number of columns, rows, and output resulution. */
    if (cols < 1) cols = 1;
    if (cols > 1000) cols = 1000;
    if (rows < 1) rows = 1;
    if (rows > 1000) rows = 1000;

    /* Generate the city skyline and reply. */
    lwCanvas *canvas = FUNC3(cols,rows,3);
    FUNC1(canvas);
    sds rendered = FUNC5(canvas);
    rendered = FUNC6(rendered,
        "\nDedicated to the 8 bit game developers of past and present.\n"
        "Original 8 bit image from Plaguemon by hikikomori. Redis ver. ");
    rendered = FUNC6(rendered,REDIS_VERSION);
    rendered = FUNC7(rendered,"\n",1);
    FUNC0(c,rendered,FUNC9(rendered),"txt");
    FUNC8(rendered);
    FUNC4(canvas);
}