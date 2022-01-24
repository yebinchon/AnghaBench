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
struct conf {int /*<<< orphan*/ * fh; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct conf*) ; 
 struct conf* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct conf*) ; 
 scalar_t__ FUNC4 (struct conf*) ; 
 scalar_t__ FUNC5 (struct conf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

struct conf *
FUNC8(char *filename)
{
    rstatus_t status;
    struct conf *cf;

    cf = FUNC2(filename);
    if (cf == NULL) {
        return NULL;
    }

    /* validate configuration file before parsing */
    status = FUNC5(cf);
    if (status != NC_OK) {
        goto error;
    }

    /* parse the configuration file */
    status = FUNC3(cf);
    if (status != NC_OK) {
        goto error;
    }

    /* validate parsed configuration */
    status = FUNC4(cf);
    if (status != NC_OK) {
        goto error;
    }

    FUNC1(cf);

    FUNC6(cf->fh);
    cf->fh = NULL;

    return cf;

error:
    FUNC7("nutcracker: configuration file '%s' syntax is invalid",
               filename);
    FUNC6(cf->fh);
    cf->fh = NULL;
    FUNC0(cf);
    return NULL;
}