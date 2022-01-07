
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_thread_mutex_t ;
typedef int ngx_thread_cond_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int ngx_log_error (int ,int *,scalar_t__,char*) ;
 int ngx_time_update () ;
 scalar_t__ pthread_cond_wait (int *,int *) ;

ngx_int_t
ngx_thread_cond_wait(ngx_thread_cond_t *cond, ngx_thread_mutex_t *mtx,
    ngx_log_t *log)
{
    ngx_err_t err;

    err = pthread_cond_wait(cond, mtx);





    if (err == 0) {
        return NGX_OK;
    }

    ngx_log_error(NGX_LOG_ALERT, log, err, "pthread_cond_wait() failed");

    return NGX_ERROR;
}
