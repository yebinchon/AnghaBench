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
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct stats {int sd; TYPE_1__ buf; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_VERB ; 
 scalar_t__ NC_ERROR ; 
 scalar_t__ NC_OK ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct stats*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rstatus_t
FUNC7(struct stats *st)
{
    rstatus_t status;
    ssize_t n;
    int sd;

    status = FUNC5(st);
    if (status != NC_OK) {
        return status;
    }

    sd = FUNC0(st->sd, NULL, NULL);
    if (sd < 0) {
        FUNC3("accept on m %d failed: %s", st->sd, FUNC6(errno));
        return NC_ERROR;
    }

    FUNC2(LOG_VERB, "send stats on sd %d %d bytes", sd, st->buf.len);

    n = FUNC4(sd, st->buf.data, st->buf.len);
    if (n < 0) {
        FUNC3("send stats on sd %d failed: %s", sd, FUNC6(errno));
        FUNC1(sd);
        return NC_ERROR;
    }

    FUNC1(sd);

    return NC_OK;
}