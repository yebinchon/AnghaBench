#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  psz; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ module_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  config_lock ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

char *FUNC6(const char *psz_name)
{
    module_config_t *p_config;

    p_config = FUNC2( psz_name );

    /* sanity checks */
    FUNC1(p_config != NULL);
    FUNC1(FUNC0 (p_config->i_type));

    /* return a copy of the string */
    FUNC4 (&config_lock);
    char *psz_value = FUNC3 (p_config->value.psz);
    FUNC5 (&config_lock);

    return psz_value;
}