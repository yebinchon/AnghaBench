
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;


 int NGX_LOG_DEBUG_ALLOC ;
 int NGX_LOG_EMERG ;
 void* malloc (size_t) ;
 int ngx_errno ;
 int ngx_log_debug2 (int ,int *,int ,char*,void*,size_t) ;
 int ngx_log_error (int ,int *,int ,char*,size_t) ;

void *
ngx_alloc(size_t size, ngx_log_t *log)
{
    void *p;

    p = malloc(size);
    if (p == ((void*)0)) {
        ngx_log_error(NGX_LOG_EMERG, log, ngx_errno,
                      "malloc(%uz) failed", size);
    }

    ngx_log_debug2(NGX_LOG_DEBUG_ALLOC, log, 0, "malloc: %p:%uz", p, size);

    return p;
}
