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
struct Tox_Options {int dummy; } ;
typedef  int /*<<< orphan*/  TOX_ERR_OPTIONS_NEW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOX_ERR_OPTIONS_NEW_MALLOC ; 
 int /*<<< orphan*/  TOX_ERR_OPTIONS_NEW_OK ; 
 struct Tox_Options* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct Tox_Options*) ; 

struct Tox_Options *FUNC3(TOX_ERR_OPTIONS_NEW *error)
{
    struct Tox_Options *options = FUNC1(sizeof(struct Tox_Options), 1);

    if (options) {
        FUNC2(options);
        FUNC0(error, TOX_ERR_OPTIONS_NEW_OK);
        return options;
    }

    FUNC0(error, TOX_ERR_OPTIONS_NEW_MALLOC);
    return NULL;
}