
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_res {void* payload; struct vlc_res* prev; int (* release ) (void*) ;} ;


 int assert (int ) ;
 int free (struct vlc_res*) ;
 int stub1 (void*) ;
 struct vlc_res** vlc_obj_res (int *) ;

void vlc_objres_remove(vlc_object_t *obj, void *data,
                       bool (*match)(void *, void *))
{
    struct vlc_res **restrict pp = vlc_obj_res(obj);
    for (;;)
    {
        struct vlc_res *res = *pp;

        assert(res != ((void*)0));

        if (match(res->payload, data))
        {
            *pp = res->prev;
            res->release(res->payload);
            free(res);
            return;
        }

        pp = &res->prev;
    }
}
