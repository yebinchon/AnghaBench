
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int u_char ;
struct rlimit {scalar_t__ rlim_cur; } ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_15__ {int msec; } ;
typedef TYPE_2__ ngx_time_t ;
typedef int ngx_shmtx_sh_t ;
struct TYPE_16__ {size_t size; int * addr; int log; int name; } ;
typedef TYPE_3__ ngx_shm_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {scalar_t__ connections; int name; } ;
typedef TYPE_4__ ngx_event_conf_t ;
struct TYPE_14__ {int data; } ;
struct TYPE_18__ {int log; TYPE_1__ lock_file; int conf_ctx; } ;
typedef TYPE_5__ ngx_cycle_t ;
struct TYPE_19__ {scalar_t__ rlimit_nofile; scalar_t__ master; int timer_resolution; } ;
typedef TYPE_6__ ngx_core_conf_t ;
typedef int ngx_atomic_t ;
struct TYPE_20__ {scalar_t__ spin; } ;
struct TYPE_13__ {size_t ctx_index; } ;


 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_LOG_NOTICE ;
 int NGX_LOG_WARN ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_PROCESS_MASTER ;
 int RLIMIT_NOFILE ;
 int getrlimit (int ,struct rlimit*) ;
 TYPE_8__ ngx_accept_mutex ;
 int * ngx_accept_mutex_ptr ;
 int ngx_atomic_cmp_set (int *,int ,int) ;
 int * ngx_connection_counter ;
 int ngx_core_module ;
 int ngx_errno ;
 TYPE_11__ ngx_event_core_module ;
 int ngx_events_module ;
 void*** ngx_get_conf (int ,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 scalar_t__ ngx_pid ;
 scalar_t__ ngx_process ;
 scalar_t__ ngx_random_number ;
 scalar_t__ ngx_shm_alloc (TYPE_3__*) ;
 scalar_t__ ngx_shmtx_create (TYPE_8__*,int *,int ) ;
 int * ngx_stat_accepted ;
 int * ngx_stat_active ;
 int * ngx_stat_handled ;
 int * ngx_stat_reading ;
 int * ngx_stat_request_time ;
 int * ngx_stat_requests ;
 int * ngx_stat_waiting ;
 int * ngx_stat_writing ;
 int ngx_str_set (int *,char*) ;
 int * ngx_temp_number ;
 int ngx_test_config ;
 TYPE_2__* ngx_timeofday () ;
 int ngx_timer_resolution ;

__attribute__((used)) static ngx_int_t
ngx_event_module_init(ngx_cycle_t *cycle)
{
    void ***cf;
    u_char *shared;
    size_t size, cl;
    ngx_shm_t shm;
    ngx_time_t *tp;
    ngx_core_conf_t *ccf;
    ngx_event_conf_t *ecf;

    cf = ngx_get_conf(cycle->conf_ctx, ngx_events_module);
    ecf = (*cf)[ngx_event_core_module.ctx_index];

    if (!ngx_test_config && ngx_process <= NGX_PROCESS_MASTER) {
        ngx_log_error(NGX_LOG_NOTICE, cycle->log, 0,
                      "using the \"%s\" event method", ecf->name);
    }

    ccf = (ngx_core_conf_t *) ngx_get_conf(cycle->conf_ctx, ngx_core_module);

    ngx_timer_resolution = ccf->timer_resolution;


    {
    ngx_int_t limit;
    struct rlimit rlmt;

    if (getrlimit(RLIMIT_NOFILE, &rlmt) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "getrlimit(RLIMIT_NOFILE) failed, ignored");

    } else {
        if (ecf->connections > (ngx_uint_t) rlmt.rlim_cur
            && (ccf->rlimit_nofile == NGX_CONF_UNSET
                || ecf->connections > (ngx_uint_t) ccf->rlimit_nofile))
        {
            limit = (ccf->rlimit_nofile == NGX_CONF_UNSET) ?
                         (ngx_int_t) rlmt.rlim_cur : ccf->rlimit_nofile;

            ngx_log_error(NGX_LOG_WARN, cycle->log, 0,
                          "%ui worker_connections exceed "
                          "open file resource limit: %i",
                          ecf->connections, limit);
        }
    }
    }



    if (ccf->master == 0) {
        return NGX_OK;
    }

    if (ngx_accept_mutex_ptr) {
        return NGX_OK;
    }




    cl = 128;

    size = cl
           + cl
           + cl;
    shm.size = size;
    ngx_str_set(&shm.name, "nginx_shared_zone");
    shm.log = cycle->log;

    if (ngx_shm_alloc(&shm) != NGX_OK) {
        return NGX_ERROR;
    }

    shared = shm.addr;

    ngx_accept_mutex_ptr = (ngx_atomic_t *) shared;
    ngx_accept_mutex.spin = (ngx_uint_t) -1;

    if (ngx_shmtx_create(&ngx_accept_mutex, (ngx_shmtx_sh_t *) shared,
                         cycle->lock_file.data)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    ngx_connection_counter = (ngx_atomic_t *) (shared + 1 * cl);

    (void) ngx_atomic_cmp_set(ngx_connection_counter, 0, 1);

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, cycle->log, 0,
                   "counter: %p, %uA",
                   ngx_connection_counter, *ngx_connection_counter);

    ngx_temp_number = (ngx_atomic_t *) (shared + 2 * cl);

    tp = ngx_timeofday();

    ngx_random_number = (tp->msec << 16) + ngx_pid;
    return NGX_OK;
}
