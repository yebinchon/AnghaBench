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
struct TYPE_4__ {char* psz; } ;
struct TYPE_5__ {TYPE_1__ value; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_2__ module_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 int config_dirty ; 
 int /*<<< orphan*/  config_lock ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(const char *psz_name, const char *psz_value)
{
    module_config_t *p_config = FUNC2( psz_name );


    /* sanity checks */
    FUNC1(p_config != NULL);
    FUNC1(FUNC0(p_config->i_type));

    char *str, *oldstr;
    if ((psz_value != NULL) && *psz_value)
        str = FUNC4 (psz_value);
    else
        str = NULL;

    FUNC6 (&config_lock);
    oldstr = (char *)p_config->value.psz;
    p_config->value.psz = str;
    config_dirty = true;
    FUNC5 (&config_lock);

    FUNC3 (oldstr);
}