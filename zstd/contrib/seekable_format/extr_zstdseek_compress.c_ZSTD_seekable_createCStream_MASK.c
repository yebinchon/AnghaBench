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
struct TYPE_6__ {int /*<<< orphan*/ * cstream; int /*<<< orphan*/  framelog; } ;
typedef  TYPE_1__ ZSTD_seekable_CStream ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

ZSTD_seekable_CStream* FUNC7()
{
    ZSTD_seekable_CStream* zcs = FUNC5(sizeof(ZSTD_seekable_CStream));

    if (zcs == NULL) return NULL;

    FUNC6(zcs, 0, sizeof(*zcs));

    zcs->cstream = FUNC0();
    if (zcs->cstream == NULL) goto failed1;

    if (FUNC2(FUNC3(&zcs->framelog))) goto failed2;

    return zcs;

failed2:
    FUNC1(zcs->cstream);
failed1:
    FUNC4(zcs);
    return NULL;
}