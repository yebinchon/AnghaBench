
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* data; int log; TYPE_6__* cache; TYPE_3__* file; } ;
typedef TYPE_1__ ngx_open_file_cache_event_t ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_9__ {int close; scalar_t__ use_event; int * event; int node; int queue; } ;
typedef TYPE_3__ ngx_cached_open_file_t ;
struct TYPE_10__ {int current; int rbtree; } ;


 int ngx_close_cached_file (TYPE_6__*,TYPE_3__*,int ,int ) ;
 int ngx_free (TYPE_1__*) ;
 int ngx_queue_remove (int *) ;
 int ngx_rbtree_delete (int *,int *) ;

__attribute__((used)) static void
ngx_open_file_cache_remove(ngx_event_t *ev)
{
    ngx_cached_open_file_t *file;
    ngx_open_file_cache_event_t *fev;

    fev = ev->data;
    file = fev->file;

    ngx_queue_remove(&file->queue);

    ngx_rbtree_delete(&fev->cache->rbtree, &file->node);

    fev->cache->current--;


    file->event = ((void*)0);
    file->use_event = 0;

    file->close = 1;

    ngx_close_cached_file(fev->cache, file, 0, ev->log);



    ngx_free(ev->data);
    ngx_free(ev);
}
