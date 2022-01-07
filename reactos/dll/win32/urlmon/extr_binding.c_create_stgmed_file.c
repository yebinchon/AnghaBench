
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * vtbl; } ;
typedef TYPE_1__ stgmed_obj_t ;
struct TYPE_8__ {TYPE_1__ stgmed_obj; TYPE_3__* buf; } ;
typedef TYPE_2__ stgmed_file_obj_t ;
struct TYPE_9__ {int IUnknown_iface; } ;
typedef TYPE_3__ stgmed_buf_t ;


 int IUnknown_AddRef (int *) ;
 TYPE_2__* heap_alloc (int) ;
 int stgmed_file_vtbl ;

__attribute__((used)) static stgmed_obj_t *create_stgmed_file(stgmed_buf_t *buf)
{
    stgmed_file_obj_t *ret = heap_alloc(sizeof(*ret));

    ret->stgmed_obj.vtbl = &stgmed_file_vtbl;

    IUnknown_AddRef(&buf->IUnknown_iface);
    ret->buf = buf;

    return &ret->stgmed_obj;
}
