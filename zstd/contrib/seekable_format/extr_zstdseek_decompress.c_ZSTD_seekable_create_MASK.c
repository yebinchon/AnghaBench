#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dstream; } ;
typedef  TYPE_1__ ZSTD_seekable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ZSTD_seekable* FUNC4(void)
{
    ZSTD_seekable* zs = FUNC2(sizeof(ZSTD_seekable));

    if (zs == NULL) return NULL;

    /* also initializes stage to zsds_init */
    FUNC3(zs, 0, sizeof(*zs));

    zs->dstream = FUNC0();
    if (zs->dstream == NULL) {
        FUNC1(zs);
        return NULL;
    }

    return zs;
}