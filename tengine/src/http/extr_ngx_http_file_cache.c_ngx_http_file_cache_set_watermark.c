
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sh; } ;
typedef TYPE_2__ ngx_http_file_cache_t ;
struct TYPE_7__ {int log; } ;
struct TYPE_5__ {int watermark; int count; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_4__* ngx_cycle ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;

__attribute__((used)) static void
ngx_http_file_cache_set_watermark(ngx_http_file_cache_t *cache)
{
    cache->sh->watermark = cache->sh->count - cache->sh->count / 8;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "http file cache watermark: %ui", cache->sh->watermark);
}
