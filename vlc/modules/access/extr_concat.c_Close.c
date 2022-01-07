
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct access_entry {struct access_entry* next; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {struct access_entry* first; int * access; } ;
typedef TYPE_2__ access_sys_t ;


 int free (struct access_entry*) ;
 int var_Destroy (TYPE_1__*,char*) ;
 int vlc_stream_Delete (int *) ;

__attribute__((used)) static void Close(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    if (sys->access != ((void*)0))
        vlc_stream_Delete(sys->access);

    for (struct access_entry *e = sys->first, *next; e != ((void*)0); e = next)
    {
        next = e->next;
        free(e);
    }

    var_Destroy(access, "concat-list");
}
