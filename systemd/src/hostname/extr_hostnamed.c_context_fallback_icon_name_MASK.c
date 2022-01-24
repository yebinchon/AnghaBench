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
struct TYPE_4__ {char const** data; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 size_t PROP_CHASSIS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char const*) ; 

__attribute__((used)) static char* FUNC5(Context *c) {
        const char *chassis;

        FUNC0(c);

        if (!FUNC2(c->data[PROP_CHASSIS]))
                return FUNC4("computer-", c->data[PROP_CHASSIS]);

        chassis = FUNC1();
        if (chassis)
                return FUNC4("computer-", chassis);

        return FUNC3("computer");
}