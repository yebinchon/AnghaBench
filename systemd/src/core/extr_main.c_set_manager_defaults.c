
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int default_oom_policy; int default_tasks_max; int default_tasks_accounting; int default_memory_accounting; int default_blockio_accounting; int default_ip_accounting; int default_io_accounting; scalar_t__ default_cpu_accounting; int default_start_limit_burst; int default_start_limit_interval; int default_restart_usec; int default_timeout_abort_set; int default_timeout_abort_usec; int default_timeout_stop_usec; int default_timeout_start_usec; int default_std_error; int default_std_output; int default_timer_accuracy_usec; } ;
typedef TYPE_1__ Manager ;


 int arg_default_blockio_accounting ;
 scalar_t__ arg_default_cpu_accounting ;
 int arg_default_environment ;
 int arg_default_io_accounting ;
 int arg_default_ip_accounting ;
 int arg_default_memory_accounting ;
 int arg_default_oom_policy ;
 int arg_default_restart_usec ;
 int arg_default_rlimit ;
 int arg_default_start_limit_burst ;
 int arg_default_start_limit_interval ;
 int arg_default_std_error ;
 int arg_default_std_output ;
 int arg_default_tasks_accounting ;
 int arg_default_tasks_max ;
 int arg_default_timeout_abort_set ;
 int arg_default_timeout_abort_usec ;
 int arg_default_timeout_start_usec ;
 int arg_default_timeout_stop_usec ;
 int arg_default_timer_accuracy_usec ;
 int assert (TYPE_1__*) ;
 scalar_t__ cpu_accounting_is_cheap () ;
 int manager_default_environment (TYPE_1__*) ;
 int manager_set_default_rlimits (TYPE_1__*,int ) ;
 int manager_transient_environment_add (TYPE_1__*,int ) ;

__attribute__((used)) static void set_manager_defaults(Manager *m) {

        assert(m);





        m->default_timer_accuracy_usec = arg_default_timer_accuracy_usec;
        m->default_std_output = arg_default_std_output;
        m->default_std_error = arg_default_std_error;
        m->default_timeout_start_usec = arg_default_timeout_start_usec;
        m->default_timeout_stop_usec = arg_default_timeout_stop_usec;
        m->default_timeout_abort_usec = arg_default_timeout_abort_usec;
        m->default_timeout_abort_set = arg_default_timeout_abort_set;
        m->default_restart_usec = arg_default_restart_usec;
        m->default_start_limit_interval = arg_default_start_limit_interval;
        m->default_start_limit_burst = arg_default_start_limit_burst;



        if (arg_default_cpu_accounting >= 0)
                m->default_cpu_accounting = arg_default_cpu_accounting;
        else
                m->default_cpu_accounting = cpu_accounting_is_cheap();

        m->default_io_accounting = arg_default_io_accounting;
        m->default_ip_accounting = arg_default_ip_accounting;
        m->default_blockio_accounting = arg_default_blockio_accounting;
        m->default_memory_accounting = arg_default_memory_accounting;
        m->default_tasks_accounting = arg_default_tasks_accounting;
        m->default_tasks_max = arg_default_tasks_max;
        m->default_oom_policy = arg_default_oom_policy;

        (void) manager_set_default_rlimits(m, arg_default_rlimit);

        (void) manager_default_environment(m);
        (void) manager_transient_environment_add(m, arg_default_environment);
}
