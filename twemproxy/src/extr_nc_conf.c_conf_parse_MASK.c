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
struct conf {int parsed; int /*<<< orphan*/  arg; scalar_t__ sound; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ NC_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct conf*) ; 
 scalar_t__ FUNC3 (struct conf*) ; 
 scalar_t__ FUNC4 (struct conf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static rstatus_t
FUNC5(struct conf *cf)
{
    rstatus_t status;

    FUNC0(cf->sound && !cf->parsed);
    FUNC0(FUNC1(&cf->arg) == 0);

    status = FUNC2(cf);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC4(cf, NULL);
    if (status != NC_OK) {
        return status;
    }

    status = FUNC3(cf);
    if (status != NC_OK) {
        return status;
    }

    cf->parsed = 1;

    return NC_OK;
}