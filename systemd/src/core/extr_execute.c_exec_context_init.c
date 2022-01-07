
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int umask; int syslog_priority; int syslog_level_prefix; int ignore_sigpipe; int log_level_max; int numa_policy; scalar_t__ restrict_namespaces; int capability_bounding_set; int timeout_clean_usec; TYPE_1__* directories; int personality; int timer_slack_nsec; int cpu_sched_policy; int ioprio; } ;
struct TYPE_5__ {int mode; } ;
typedef size_t ExecDirectoryType ;
typedef TYPE_2__ ExecContext ;


 int CAP_ALL ;
 int IOPRIO_CLASS_BE ;
 int IOPRIO_PRIO_VALUE (int ,int ) ;
 int LOG_DAEMON ;
 int LOG_INFO ;
 scalar_t__ NAMESPACE_FLAGS_ALL ;
 scalar_t__ NAMESPACE_FLAGS_INITIAL ;
 int NSEC_INFINITY ;
 int PERSONALITY_INVALID ;
 int SCHED_OTHER ;
 int USEC_INFINITY ;
 size_t _EXEC_DIRECTORY_TYPE_MAX ;
 int assert (TYPE_2__*) ;
 int assert_cc (int) ;
 int numa_policy_reset (int *) ;

void exec_context_init(ExecContext *c) {
        ExecDirectoryType i;

        assert(c);

        c->umask = 0022;
        c->ioprio = IOPRIO_PRIO_VALUE(IOPRIO_CLASS_BE, 0);
        c->cpu_sched_policy = SCHED_OTHER;
        c->syslog_priority = LOG_DAEMON|LOG_INFO;
        c->syslog_level_prefix = 1;
        c->ignore_sigpipe = 1;
        c->timer_slack_nsec = NSEC_INFINITY;
        c->personality = PERSONALITY_INVALID;
        for (i = 0; i < _EXEC_DIRECTORY_TYPE_MAX; i++)
                c->directories[i].mode = 0755;
        c->timeout_clean_usec = USEC_INFINITY;
        c->capability_bounding_set = CAP_ALL;
        assert_cc(NAMESPACE_FLAGS_INITIAL != NAMESPACE_FLAGS_ALL);
        c->restrict_namespaces = NAMESPACE_FLAGS_INITIAL;
        c->log_level_max = -1;
        numa_policy_reset(&c->numa_policy);
}
