#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  error; } ;
struct conf {int valid_parser; int /*<<< orphan*/  fh; TYPE_1__ parser; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC6(struct conf *cf)
{
    int rv;

    FUNC0(!cf->valid_parser);

    rv = FUNC1(cf->fh, 0L, SEEK_SET);
    if (rv < 0) {
        FUNC2("conf: failed to seek to the beginning of file '%s': %s",
                  cf->fname, FUNC3(errno));
        return NC_ERROR;
    }

    rv = FUNC4(&cf->parser);
    if (!rv) {
        FUNC2("conf: failed (err %d) to initialize yaml parser",
                  cf->parser.error);
        return NC_ERROR;
    }

    FUNC5(&cf->parser, cf->fh);
    cf->valid_parser = 1;

    return NC_OK;
}