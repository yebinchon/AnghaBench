
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutexattr_t ;
typedef int ngx_thread_mutex_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 int PTHREAD_MUTEX_ERRORCHECK ;
 int ngx_log_error (int ,int *,scalar_t__,char*) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

ngx_int_t
ngx_thread_mutex_create(ngx_thread_mutex_t *mtx, ngx_log_t *log)
{
    ngx_err_t err;
    pthread_mutexattr_t attr;

    err = pthread_mutexattr_init(&attr);
    if (err != 0) {
        ngx_log_error(NGX_LOG_EMERG, log, err,
                      "pthread_mutexattr_init() failed");
        return NGX_ERROR;
    }

    err = pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_ERRORCHECK);
    if (err != 0) {
        ngx_log_error(NGX_LOG_EMERG, log, err,
                      "pthread_mutexattr_settype"
                      "(PTHREAD_MUTEX_ERRORCHECK) failed");
        return NGX_ERROR;
    }

    err = pthread_mutex_init(mtx, &attr);
    if (err != 0) {
        ngx_log_error(NGX_LOG_EMERG, log, err,
                      "pthread_mutex_init() failed");
        return NGX_ERROR;
    }

    err = pthread_mutexattr_destroy(&attr);
    if (err != 0) {
        ngx_log_error(NGX_LOG_ALERT, log, err,
                      "pthread_mutexattr_destroy() failed");
    }

    return NGX_OK;
}
