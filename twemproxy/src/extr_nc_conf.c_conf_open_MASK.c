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
struct string {int dummy; } ;
struct conf_pool {int dummy; } ;
struct conf {char* fname; scalar_t__ valid; scalar_t__ parsed; scalar_t__ sound; scalar_t__ valid_token; scalar_t__ valid_event; scalar_t__ valid_parser; scalar_t__ seq; scalar_t__ depth; int /*<<< orphan*/ * fh; int /*<<< orphan*/  arg; int /*<<< orphan*/  pool; } ;
typedef  scalar_t__ rstatus_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_DEFAULT_ARGS ; 
 int /*<<< orphan*/  CONF_DEFAULT_POOL ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ NC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 struct conf* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct conf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct conf *
FUNC9(char *filename)
{
    rstatus_t status;
    struct conf *cf;
    FILE *fh;

    fh = FUNC3(filename, "r");
    if (fh == NULL) {
        FUNC5("conf: failed to open configuration '%s': %s", filename,
                  FUNC8(errno));
        return NULL;
    }

    cf = FUNC6(sizeof(*cf));
    if (cf == NULL) {
        FUNC2(fh);
        return NULL;
    }

    status = FUNC1(&cf->arg, CONF_DEFAULT_ARGS, sizeof(struct string));
    if (status != NC_OK) {
        FUNC7(cf);
        FUNC2(fh);
        return NULL;
    }

    status = FUNC1(&cf->pool, CONF_DEFAULT_POOL, sizeof(struct conf_pool));
    if (status != NC_OK) {
        FUNC0(&cf->arg);
        FUNC7(cf);
        FUNC2(fh);
        return NULL;
    }

    cf->fname = filename;
    cf->fh = fh;
    cf->depth = 0;
    /* parser, event, and token are initialized later */
    cf->seq = 0;
    cf->valid_parser = 0;
    cf->valid_event = 0;
    cf->valid_token = 0;
    cf->sound = 0;
    cf->parsed = 0;
    cf->valid = 0;

    FUNC4(LOG_VVERB, "opened conf '%s'", filename);

    return cf;
}