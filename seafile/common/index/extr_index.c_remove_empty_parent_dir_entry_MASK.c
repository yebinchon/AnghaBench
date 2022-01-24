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
struct index_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct index_state*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

void FUNC6 (struct index_state *istate, const char *path)
{
    char *parent = FUNC1(path);
    char *slash;

    /* Find and remove empty dir entry from low level to top level. */
    while (1) {
        slash = FUNC5 (parent, '/');
        if (!slash)
            break;

        *slash = 0;

        if (FUNC2 (istate, parent, FUNC4(parent), 0) != NULL) {
            FUNC3 (istate, parent);
            break;
        }
    }

    FUNC0 (parent);
}