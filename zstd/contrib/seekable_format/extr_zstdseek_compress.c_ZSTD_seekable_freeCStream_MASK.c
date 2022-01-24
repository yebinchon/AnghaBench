#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  framelog; int /*<<< orphan*/  cstream; } ;
typedef  TYPE_1__ ZSTD_seekable_CStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

size_t FUNC3(ZSTD_seekable_CStream* zcs)
{
    if (zcs == NULL) return 0; /* support free on null */
    FUNC0(zcs->cstream);
    FUNC1(&zcs->framelog);
    FUNC2(zcs);

    return 0;
}