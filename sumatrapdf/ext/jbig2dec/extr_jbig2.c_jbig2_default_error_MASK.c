#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int int32_t ;
typedef  scalar_t__ Jbig2Severity ;

/* Variables and functions */
 scalar_t__ JBIG2_SEVERITY_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void *data, const char *msg, Jbig2Severity severity, int32_t seg_idx)
{
    /* report only fatal errors by default */
    if (severity == JBIG2_SEVERITY_FATAL) {
        FUNC1(stderr, "jbig2 decoder FATAL ERROR: %s", msg);
        if (seg_idx != -1)
            FUNC1(stderr, " (segment 0x%02x)", seg_idx);
        FUNC1(stderr, "\n");
        FUNC0(stderr);
    }
}