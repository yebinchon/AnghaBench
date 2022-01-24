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
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 char* WIN_DIR ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    int len;

    FUNC0(MAX_PATH, CURR_DIR);
    len = FUNC2(CURR_DIR);

    if(len && (CURR_DIR[len-1] == '\\'))
        CURR_DIR[len-1] = 0;

    FUNC1(WIN_DIR, MAX_PATH);
    len = FUNC2(WIN_DIR);

    if (len && (WIN_DIR[len-1] == '\\'))
        WIN_DIR[len-1] = 0;
}