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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static const char *FUNC3(void)
{
    static char name[11] = "0000000000";
    static int pos = 0;
    char *new_name;

    if (name[pos] == 'Z')
    {
        pos++;
        if (pos > 9)
            FUNC0("too many index names\n");
    }

    name[pos]++;

    new_name = FUNC2(sizeof(name));
    FUNC1(new_name, name);
    return new_name;
}