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
typedef  size_t cmsUInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int,size_t*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static
void FUNC3(void)
{
    cmsUInt32Number n, i;
    cmsUInt32Number Codes[200];
    char* Descriptions[200];

    n = FUNC1(FUNC0(), 200, Codes, Descriptions);

    FUNC2("Supported intents:\n");
    for (i=0; i < n; i++) {
        FUNC2("\t%u - %s\n", Codes[i], Descriptions[i]);
    }
    FUNC2("\n");
}