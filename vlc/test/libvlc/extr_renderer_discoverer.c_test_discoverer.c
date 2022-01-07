
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_renderer_discoverer_t ;
typedef int libvlc_instance_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int getchar () ;
 int libvlc_RendererDiscovererItemAdded ;
 int libvlc_RendererDiscovererItemDeleted ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int * libvlc_renderer_discoverer_event_manager (int *) ;
 int * libvlc_renderer_discoverer_new (int *,char const*) ;
 int libvlc_renderer_discoverer_release (int *) ;
 int libvlc_renderer_discoverer_start (int *) ;
 int libvlc_renderer_discoverer_stop (int *) ;
 int renderer_discoverer_item_added ;
 int renderer_discoverer_item_deleted ;
 int test_log (char*,...) ;

__attribute__((used)) static void
test_discoverer(libvlc_instance_t *p_vlc, const char *psz_name)
{
    test_log("creating and starting discoverer %s\n", psz_name);

    libvlc_renderer_discoverer_t *p_rd =
        libvlc_renderer_discoverer_new(p_vlc, psz_name);
    assert(p_rd != ((void*)0));

    libvlc_event_manager_t *p_evm = libvlc_renderer_discoverer_event_manager(p_rd);
    assert(p_evm);

    int i_ret;
    i_ret = libvlc_event_attach(p_evm, libvlc_RendererDiscovererItemAdded,
                                renderer_discoverer_item_added, ((void*)0));
    assert(i_ret == 0);
    i_ret = libvlc_event_attach(p_evm, libvlc_RendererDiscovererItemDeleted,
                                renderer_discoverer_item_deleted, ((void*)0));
    assert(i_ret == 0);

    if (libvlc_renderer_discoverer_start(p_rd) == -1)
    {
        test_log("warn: could not start md (not critical)\n");
    }
    else
    {
        test_log("Press any keys to stop\n");
        getchar();
        libvlc_renderer_discoverer_stop(p_rd);
    }

    libvlc_renderer_discoverer_release(p_rd);
}
