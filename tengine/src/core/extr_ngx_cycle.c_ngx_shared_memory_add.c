
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef size_t ngx_uint_t ;
struct TYPE_16__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_15__ {size_t size; scalar_t__ exists; TYPE_3__ name; int * addr; int log; } ;
struct TYPE_17__ {void* tag; scalar_t__ noreuse; int * init; TYPE_2__ shm; int * data; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
struct TYPE_18__ {size_t nelts; TYPE_4__* elts; struct TYPE_18__* next; } ;
typedef TYPE_5__ ngx_list_part_t ;
struct TYPE_19__ {TYPE_1__* cycle; } ;
typedef TYPE_6__ ngx_conf_t ;
struct TYPE_13__ {TYPE_5__ part; } ;
struct TYPE_14__ {int log; TYPE_11__ shared_memory; } ;


 int NGX_LOG_EMERG ;
 int ngx_conf_log_error (int ,TYPE_6__*,int ,char*,...) ;
 TYPE_4__* ngx_list_push (TYPE_11__*) ;
 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

ngx_shm_zone_t *
ngx_shared_memory_add(ngx_conf_t *cf, ngx_str_t *name, size_t size, void *tag)
{
    ngx_uint_t i;
    ngx_shm_zone_t *shm_zone;
    ngx_list_part_t *part;

    part = &cf->cycle->shared_memory.part;
    shm_zone = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }
            part = part->next;
            shm_zone = part->elts;
            i = 0;
        }

        if (name->len != shm_zone[i].shm.name.len) {
            continue;
        }

        if (ngx_strncmp(name->data, shm_zone[i].shm.name.data, name->len)
            != 0)
        {
            continue;
        }

        if (tag != shm_zone[i].tag) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                            "the shared memory zone \"%V\" is "
                            "already declared for a different use",
                            &shm_zone[i].shm.name);
            return ((void*)0);
        }

        if (shm_zone[i].shm.size == 0) {
            shm_zone[i].shm.size = size;
        }

        if (size && size != shm_zone[i].shm.size) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                            "the size %uz of shared memory zone \"%V\" "
                            "conflicts with already declared size %uz",
                            size, &shm_zone[i].shm.name, shm_zone[i].shm.size);
            return ((void*)0);
        }

        return &shm_zone[i];
    }

    shm_zone = ngx_list_push(&cf->cycle->shared_memory);

    if (shm_zone == ((void*)0)) {
        return ((void*)0);
    }

    shm_zone->data = ((void*)0);
    shm_zone->shm.log = cf->cycle->log;
    shm_zone->shm.addr = ((void*)0);
    shm_zone->shm.size = size;
    shm_zone->shm.name = *name;
    shm_zone->shm.exists = 0;
    shm_zone->init = ((void*)0);
    shm_zone->tag = tag;
    shm_zone->noreuse = 0;

    return shm_zone;
}
