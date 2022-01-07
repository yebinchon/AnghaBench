
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; TYPE_3__* instance; int vulkan; int surface; int swapchain; } ;
typedef TYPE_1__ vlc_vk_t ;
typedef int vlc_object_t ;
struct TYPE_5__ {int instance; } ;


 int pl_context_destroy (int *) ;
 int pl_swapchain_destroy (int *) ;
 int pl_vk_inst_destroy (TYPE_3__**) ;
 int pl_vulkan_destroy (int *) ;
 int vkDestroySurfaceKHR (int ,int ,int *) ;
 int vlc_vk_ClosePlatform (TYPE_1__*) ;

__attribute__((used)) static void Close (vlc_object_t *obj)
{
    vlc_vk_t *vk = (vlc_vk_t *) obj;

    pl_swapchain_destroy(&vk->swapchain);
    vkDestroySurfaceKHR(vk->instance->instance, vk->surface, ((void*)0));
    pl_vulkan_destroy(&vk->vulkan);
    pl_vk_inst_destroy(&vk->instance);
    pl_context_destroy(&vk->ctx);
    vlc_vk_ClosePlatform(vk);
}
