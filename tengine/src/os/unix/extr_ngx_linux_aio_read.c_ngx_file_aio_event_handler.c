
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int log; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_8__ {int (* handler ) (TYPE_2__*) ;TYPE_1__* file; int fd; } ;
typedef TYPE_3__ ngx_event_aio_t ;
struct TYPE_6__ {int name; } ;


 int NGX_LOG_DEBUG_CORE ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_file_aio_event_handler(ngx_event_t *ev)
{
    ngx_event_aio_t *aio;

    aio = ev->data;

    ngx_log_debug2(NGX_LOG_DEBUG_CORE, ev->log, 0,
                   "aio event handler fd:%d %V", aio->fd, &aio->file->name);

    aio->handler(ev);
}
