
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_res {void* payload; struct vlc_res* prev; } ;


 struct vlc_res** vlc_obj_res (int *) ;

__attribute__((used)) static void *vlc_objres_pop(vlc_object_t *obj)
{
    struct vlc_res **restrict pp = vlc_obj_res(obj);
    struct vlc_res *res = *pp;

    if (res == ((void*)0))
        return ((void*)0);
    *pp = res->prev;
    return res->payload;
}
