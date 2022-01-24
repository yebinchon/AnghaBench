#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_10__ {int /*<<< orphan*/  trans_time; int /*<<< orphan*/  recv_time; int /*<<< orphan*/  refid; int /*<<< orphan*/  root_dispersion; int /*<<< orphan*/  root_delay; int /*<<< orphan*/  precision; int /*<<< orphan*/  stratum; int /*<<< orphan*/  field; } ;
struct TYPE_11__ {int samples_jitter; int /*<<< orphan*/  packet_count; int /*<<< orphan*/  spike; int /*<<< orphan*/  dest_time; TYPE_1__ ntpmsg; int /*<<< orphan*/  origin_time; } ;
typedef  TYPE_2__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,char,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,char,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        FUNC3(m);
        FUNC3(reply);

        r = FUNC9(reply, 'r', "uuuuittayttttbtt");
        if (r < 0)
                return r;

        r = FUNC6(reply, "uuuuitt",
                                  FUNC0(m->ntpmsg.field),
                                  FUNC2(m->ntpmsg.field),
                                  FUNC1(m->ntpmsg.field),
                                  m->ntpmsg.stratum,
                                  m->ntpmsg.precision,
                                  FUNC4(&m->ntpmsg.root_delay),
                                  FUNC4(&m->ntpmsg.root_dispersion));
        if (r < 0)
                return r;

        r = FUNC7(reply, 'y', m->ntpmsg.refid, 4);
        if (r < 0)
                return r;

        r = FUNC6(reply, "ttttbtt",
                                  FUNC10(&m->origin_time),
                                  FUNC5(&m->ntpmsg.recv_time),
                                  FUNC5(&m->ntpmsg.trans_time),
                                  FUNC10(&m->dest_time),
                                  m->spike,
                                  m->packet_count,
                                  (usec_t) (m->samples_jitter * USEC_PER_SEC));
        if (r < 0)
                return r;

        return FUNC8(reply);
}