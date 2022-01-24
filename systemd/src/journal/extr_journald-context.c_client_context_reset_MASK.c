#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int log_level_max; int /*<<< orphan*/  ratelimit_burst; int /*<<< orphan*/  log_ratelimit_burst; int /*<<< orphan*/  ratelimit_interval; int /*<<< orphan*/  log_ratelimit_interval; int /*<<< orphan*/  extra_fields_mtime; void* extra_fields_data; scalar_t__ extra_fields_n_iovec; void* extra_fields_iovec; scalar_t__ label_size; void* label; int /*<<< orphan*/  invocation_id; void* user_slice; void* slice; void* user_unit; void* unit; void* owner_uid; void* session; void* cgroup; void* loginuid; int /*<<< orphan*/  auditid; void* capeff; void* cmdline; void* exe; void* comm; int /*<<< orphan*/  gid; void* uid; int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ Server ;
typedef  TYPE_1__ ClientContext ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SESSION_INVALID ; 
 int /*<<< orphan*/  GID_INVALID ; 
 int /*<<< orphan*/  NSEC_INFINITY ; 
 int /*<<< orphan*/  SD_ID128_NULL ; 
 void* UID_INVALID ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(Server *s, ClientContext *c) {
        FUNC0(s);
        FUNC0(c);

        c->timestamp = USEC_INFINITY;

        c->uid = UID_INVALID;
        c->gid = GID_INVALID;

        c->comm = FUNC1(c->comm);
        c->exe = FUNC1(c->exe);
        c->cmdline = FUNC1(c->cmdline);
        c->capeff = FUNC1(c->capeff);

        c->auditid = AUDIT_SESSION_INVALID;
        c->loginuid = UID_INVALID;

        c->cgroup = FUNC1(c->cgroup);
        c->session = FUNC1(c->session);
        c->owner_uid = UID_INVALID;
        c->unit = FUNC1(c->unit);
        c->user_unit = FUNC1(c->user_unit);
        c->slice = FUNC1(c->slice);
        c->user_slice = FUNC1(c->user_slice);

        c->invocation_id = SD_ID128_NULL;

        c->label = FUNC1(c->label);
        c->label_size = 0;

        c->extra_fields_iovec = FUNC1(c->extra_fields_iovec);
        c->extra_fields_n_iovec = 0;
        c->extra_fields_data = FUNC1(c->extra_fields_data);
        c->extra_fields_mtime = NSEC_INFINITY;

        c->log_level_max = -1;

        c->log_ratelimit_interval = s->ratelimit_interval;
        c->log_ratelimit_burst = s->ratelimit_burst;
}