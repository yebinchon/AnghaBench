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
struct TYPE_4__ {char* value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ attribute_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static inline attribute_t *FUNC5 (const char *str)
{
    attribute_t *a = FUNC1 (sizeof (*a) + FUNC4 (str) + 1);
    if (a == NULL)
        return NULL;

    FUNC3 (a->name, str);
    FUNC0 (a->name);
    char *value = FUNC2 (a->name, ':');
    if (value != NULL)
    {
        *value++ = '\0';
        a->value = value;
    }
    else
        a->value = "";
    return a;
}