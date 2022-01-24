#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  error; } ;
struct conf {int valid_event; TYPE_1__ parser; int /*<<< orphan*/  event; scalar_t__ valid_parser; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_ERROR ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static rstatus_t
FUNC3(struct conf *cf)
{
    int rv;

    FUNC0(cf->valid_parser && !cf->valid_event);

    rv = FUNC2(&cf->parser, &cf->event);
    if (!rv) {
        FUNC1("conf: failed (err %d) to get next event", cf->parser.error);
        return NC_ERROR;
    }
    cf->valid_event = 1;

    return NC_OK;
}