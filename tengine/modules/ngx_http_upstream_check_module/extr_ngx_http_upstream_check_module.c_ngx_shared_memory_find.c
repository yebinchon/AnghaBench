
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_14__ {scalar_t__ len; int data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;
struct TYPE_13__ {TYPE_2__ name; } ;
struct TYPE_15__ {void* tag; TYPE_3__ shm; } ;
typedef TYPE_5__ ngx_shm_zone_t ;
struct TYPE_16__ {size_t nelts; TYPE_5__* elts; struct TYPE_16__* next; } ;
typedef TYPE_6__ ngx_list_part_t ;
struct TYPE_11__ {int part; } ;
struct TYPE_17__ {TYPE_1__ shared_memory; } ;
typedef TYPE_7__ ngx_cycle_t ;


 scalar_t__ ngx_strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static ngx_shm_zone_t *
ngx_shared_memory_find(ngx_cycle_t *cycle, ngx_str_t *name, void *tag)
{
    ngx_uint_t i;
    ngx_shm_zone_t *shm_zone;
    ngx_list_part_t *part;

    part = (ngx_list_part_t *) &(cycle->shared_memory.part);
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
            continue;
        }

        return &shm_zone[i];
    }

    return ((void*)0);
}
