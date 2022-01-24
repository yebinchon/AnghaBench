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

/* Variables and functions */
 int G_USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void *
FUNC2 (void *vdata)
{
    while (1) {
        FUNC0 ("commits");
        FUNC0 ("fs");
        FUNC0 ("blocks");
        FUNC1 (60 * G_USEC_PER_SEC);
    }
    return NULL;
}