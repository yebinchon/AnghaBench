
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_5__ {int (* manager ) (int ) ;int data; } ;
typedef TYPE_2__ ngx_path_t ;
typedef int ngx_msec_t ;
typedef int ngx_event_t ;
struct TYPE_4__ {size_t nelts; TYPE_2__** elts; } ;
struct TYPE_6__ {TYPE_1__ paths; } ;


 int ngx_add_timer (int *,int) ;
 TYPE_3__* ngx_cycle ;
 int ngx_time_update () ;
 int stub1 (int ) ;

__attribute__((used)) static void
ngx_cache_manager_process_handler(ngx_event_t *ev)
{
    ngx_uint_t i;
    ngx_msec_t next, n;
    ngx_path_t **path;

    next = 60 * 60 * 1000;

    path = ngx_cycle->paths.elts;
    for (i = 0; i < ngx_cycle->paths.nelts; i++) {

        if (path[i]->manager) {
            n = path[i]->manager(path[i]->data);

            next = (n <= next) ? n : next;

            ngx_time_update();
        }
    }

    if (next == 0) {
        next = 1;
    }

    ngx_add_timer(ev, next);
}
