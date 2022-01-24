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
struct string {scalar_t__ len; } ;
struct conf {int /*<<< orphan*/  arg; } ;
struct command {int offset; } ;
typedef  int dist_type_t ;

/* Variables and functions */
 char* CONF_OK ; 
 int CONF_UNSET_DIST ; 
 struct string* FUNC0 (int /*<<< orphan*/ *) ; 
 struct string* dist_strings ; 
 scalar_t__ FUNC1 (struct string*,struct string*) ; 

char *
FUNC2(struct conf *cf, struct command *cmd, void *conf)
{
    uint8_t *p;
    dist_type_t *dp;
    struct string *value, *dist;

    p = conf;
    dp = (dist_type_t *)(p + cmd->offset);

    if (*dp != CONF_UNSET_DIST) {
        return "is a duplicate";
    }

    value = FUNC0(&cf->arg);

    for (dist = dist_strings; dist->len != 0; dist++) {
        if (FUNC1(value, dist) != 0) {
            continue;
        }

        *dp = dist - dist_strings;

        return CONF_OK;
    }

    return "is not a valid distribution";
}