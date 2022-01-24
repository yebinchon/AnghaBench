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
typedef  int /*<<< orphan*/  uint8_t ;
struct string {scalar_t__ data; } ;
struct conf {int /*<<< orphan*/  arg; } ;
struct command {int offset; } ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 char* CONF_ERROR ; 
 char* CONF_OK ; 
 scalar_t__ CONF_UNSET_PTR ; 
 scalar_t__ NC_OK ; 
 struct string* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct string*,struct string*) ; 

char *
FUNC2(struct conf *cf, struct command *cmd, void *conf)
{
    rstatus_t status;
    uint8_t *p;
    struct string *field, *value;

    p = conf;
    field = (struct string *)(p + cmd->offset);

    if (field->data != CONF_UNSET_PTR) {
        return "is a duplicate";
    }

    value = FUNC0(&cf->arg);

    status = FUNC1(field, value);
    if (status != NC_OK) {
        return CONF_ERROR;
    }

    return CONF_OK;
}