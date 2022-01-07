
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_vk_t {int ref_count; int * module; struct vout_window_t* window; scalar_t__ surface; int * instance; int * ctx; } ;
typedef struct vlc_vk_t vlc_vk_t ;
typedef int vlc_object_t ;
struct vout_window_t {int dummy; } ;
typedef scalar_t__ VkSurfaceKHR ;


 int * module_need (struct vlc_vk_t*,char*,char const*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_atomic_rc_init (int *) ;
 struct vlc_vk_t* vlc_object_create (int *,int) ;
 int vlc_object_delete (struct vlc_vk_t*) ;

vlc_vk_t *vlc_vk_Create(struct vout_window_t *wnd, const char *name)
{
    vlc_object_t *parent = (vlc_object_t *) wnd;
    struct vlc_vk_t *vk;

    vk = vlc_object_create(parent, sizeof (*vk));
    if (unlikely(vk == ((void*)0)))
        return ((void*)0);

    vk->ctx = ((void*)0);
    vk->instance = ((void*)0);
    vk->surface = (VkSurfaceKHR) ((void*)0);

    vk->window = wnd;
    vk->module = module_need(vk, "vulkan", name, 1);
    if (vk->module == ((void*)0))
    {
        vlc_object_delete(vk);
        return ((void*)0);
    }
    vlc_atomic_rc_init(&vk->ref_count);

    return vk;
}
