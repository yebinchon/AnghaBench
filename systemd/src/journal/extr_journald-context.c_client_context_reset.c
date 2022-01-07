
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int log_level_max; int ratelimit_burst; int log_ratelimit_burst; int ratelimit_interval; int log_ratelimit_interval; int extra_fields_mtime; void* extra_fields_data; scalar_t__ extra_fields_n_iovec; void* extra_fields_iovec; scalar_t__ label_size; void* label; int invocation_id; void* user_slice; void* slice; void* user_unit; void* unit; void* owner_uid; void* session; void* cgroup; void* loginuid; int auditid; void* capeff; void* cmdline; void* exe; void* comm; int gid; void* uid; int timestamp; } ;
typedef TYPE_1__ Server ;
typedef TYPE_1__ ClientContext ;


 int AUDIT_SESSION_INVALID ;
 int GID_INVALID ;
 int NSEC_INFINITY ;
 int SD_ID128_NULL ;
 void* UID_INVALID ;
 int USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 void* mfree (void*) ;

__attribute__((used)) static void client_context_reset(Server *s, ClientContext *c) {
        assert(s);
        assert(c);

        c->timestamp = USEC_INFINITY;

        c->uid = UID_INVALID;
        c->gid = GID_INVALID;

        c->comm = mfree(c->comm);
        c->exe = mfree(c->exe);
        c->cmdline = mfree(c->cmdline);
        c->capeff = mfree(c->capeff);

        c->auditid = AUDIT_SESSION_INVALID;
        c->loginuid = UID_INVALID;

        c->cgroup = mfree(c->cgroup);
        c->session = mfree(c->session);
        c->owner_uid = UID_INVALID;
        c->unit = mfree(c->unit);
        c->user_unit = mfree(c->user_unit);
        c->slice = mfree(c->slice);
        c->user_slice = mfree(c->user_slice);

        c->invocation_id = SD_ID128_NULL;

        c->label = mfree(c->label);
        c->label_size = 0;

        c->extra_fields_iovec = mfree(c->extra_fields_iovec);
        c->extra_fields_n_iovec = 0;
        c->extra_fields_data = mfree(c->extra_fields_data);
        c->extra_fields_mtime = NSEC_INFINITY;

        c->log_level_max = -1;

        c->log_ratelimit_interval = s->ratelimit_interval;
        c->log_ratelimit_burst = s->ratelimit_burst;
}
