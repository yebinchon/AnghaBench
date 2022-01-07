
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_4__ {scalar_t__ threads; int * log; int mtx; int cond; int queue; } ;
typedef TYPE_1__ ngx_thread_pool_t ;
typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 scalar_t__ NGX_OK ;
 int PTHREAD_CREATE_DETACHED ;
 int PTHREAD_STACK_MIN ;
 int ngx_log_error (int ,int *,int,char*) ;
 int * ngx_notify ;
 scalar_t__ ngx_thread_cond_create (int *,int *) ;
 scalar_t__ ngx_thread_mutex_create (int *,int *) ;
 int ngx_thread_mutex_destroy (int *,int *) ;
 int ngx_thread_pool_cycle ;
 int ngx_thread_pool_queue_init (int *) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_attr_setstacksize (int *,int ) ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;

__attribute__((used)) static ngx_int_t
ngx_thread_pool_init(ngx_thread_pool_t *tp, ngx_log_t *log, ngx_pool_t *pool)
{
    int err;
    pthread_t tid;
    ngx_uint_t n;
    pthread_attr_t attr;

    if (ngx_notify == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, log, 0,
               "the configured event method cannot be used with thread pools");
        return NGX_ERROR;
    }

    ngx_thread_pool_queue_init(&tp->queue);

    if (ngx_thread_mutex_create(&tp->mtx, log) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ngx_thread_cond_create(&tp->cond, log) != NGX_OK) {
        (void) ngx_thread_mutex_destroy(&tp->mtx, log);
        return NGX_ERROR;
    }

    tp->log = log;

    err = pthread_attr_init(&attr);
    if (err) {
        ngx_log_error(NGX_LOG_ALERT, log, err,
                      "pthread_attr_init() failed");
        return NGX_ERROR;
    }

    err = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    if (err) {
        ngx_log_error(NGX_LOG_ALERT, log, err,
                      "pthread_attr_setdetachstate() failed");
        return NGX_ERROR;
    }
    for (n = 0; n < tp->threads; n++) {
        err = pthread_create(&tid, &attr, ngx_thread_pool_cycle, tp);
        if (err) {
            ngx_log_error(NGX_LOG_ALERT, log, err,
                          "pthread_create() failed");
            return NGX_ERROR;
        }
    }

    (void) pthread_attr_destroy(&attr);

    return NGX_OK;
}
