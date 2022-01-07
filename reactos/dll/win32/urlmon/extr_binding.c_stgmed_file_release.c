
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stgmed_obj_t ;
struct TYPE_5__ {TYPE_1__* buf; } ;
typedef TYPE_2__ stgmed_file_obj_t ;
struct TYPE_4__ {int IUnknown_iface; } ;


 int IUnknown_Release (int *) ;
 int heap_free (TYPE_2__*) ;

__attribute__((used)) static void stgmed_file_release(stgmed_obj_t *obj)
{
    stgmed_file_obj_t *file_obj = (stgmed_file_obj_t*)obj;

    IUnknown_Release(&file_obj->buf->IUnknown_iface);
    heap_free(file_obj);
}
