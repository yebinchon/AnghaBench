#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct tc_netem_qopt {int limit; scalar_t__ loss; scalar_t__ duplicate; int /*<<< orphan*/  jitter; int /*<<< orphan*/  latency; } ;
struct TYPE_11__ {scalar_t__ limit; scalar_t__ loss; scalar_t__ duplicate; scalar_t__ delay; scalar_t__ jitter; } ;
struct TYPE_12__ {TYPE_1__ ne; } ;
typedef  TYPE_2__ sd_netlink_message ;
typedef  TYPE_2__ QDiscs ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_OPTIONS ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int,char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct tc_netem_qopt*,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC4(Link *link, QDiscs *qdisc, sd_netlink_message *req) {
        struct tc_netem_qopt opt = {
               .limit = 1000,
        };
        int r;

        FUNC0(link);
        FUNC0(qdisc);
        FUNC0(req);

        if (qdisc->ne.limit > 0)
                opt.limit = qdisc->ne.limit;

        if (qdisc->ne.loss > 0)
                opt.loss = qdisc->ne.loss;

        if (qdisc->ne.duplicate > 0)
                opt.duplicate = qdisc->ne.duplicate;

        if (qdisc->ne.delay != USEC_INFINITY) {
                r = FUNC3(qdisc->ne.delay, &opt.latency);
                if (r < 0)
                        return FUNC1(link, r, "Failed to calculate latency in TCA_OPTION: %m");
        }

        if (qdisc->ne.jitter != USEC_INFINITY) {
                r = FUNC3(qdisc->ne.jitter, &opt.jitter);
                if (r < 0)
                        return FUNC1(link, r, "Failed to calculate jitter in TCA_OPTION: %m");
        }

        r = FUNC2(req, TCA_OPTIONS, &opt, sizeof(struct tc_netem_qopt));
        if (r < 0)
                return FUNC1(link, r, "Could not append TCA_OPTION attribute: %m");

        return 0;
}