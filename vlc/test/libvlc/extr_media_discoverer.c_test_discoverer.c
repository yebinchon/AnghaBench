
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_list_t ;
typedef int libvlc_media_discoverer_t ;
typedef int libvlc_instance_t ;
typedef int libvlc_event_manager_t ;


 int assert (int) ;
 int getchar () ;
 int libvlc_MediaListItemAdded ;
 int libvlc_MediaListItemDeleted ;
 int libvlc_event_attach (int *,int ,int ,int *) ;
 int libvlc_event_detach (int *,int ,int ,int *) ;
 int libvlc_media_discoverer_is_running (int *) ;
 int * libvlc_media_discoverer_media_list (int *) ;
 int * libvlc_media_discoverer_new (int *,char const*) ;
 int libvlc_media_discoverer_release (int *) ;
 int libvlc_media_discoverer_start (int *) ;
 int libvlc_media_discoverer_stop (int *) ;
 int * libvlc_media_list_event_manager (int *) ;
 int libvlc_media_list_release (int *) ;
 int ml_item_added ;
 int ml_item_deleted ;
 int test_log (char*,...) ;

__attribute__((used)) static void
test_discoverer(libvlc_instance_t *p_vlc, const char *psz_name, bool b_wait)
{
    test_log("creating and starting discoverer %s\n", psz_name);

    libvlc_media_discoverer_t *p_md =
        libvlc_media_discoverer_new(p_vlc, psz_name);
    assert(p_md != ((void*)0));

    libvlc_media_list_t *p_ml = libvlc_media_discoverer_media_list(p_md);
    assert(p_ml != ((void*)0));

    libvlc_event_manager_t *p_evm = libvlc_media_list_event_manager(p_ml);
    assert(p_evm);

    int i_ret;
    i_ret = libvlc_event_attach(p_evm, libvlc_MediaListItemAdded,
                                ml_item_added, ((void*)0));
    assert(i_ret == 0);
    i_ret = libvlc_event_attach(p_evm, libvlc_MediaListItemDeleted,
                                ml_item_deleted, ((void*)0));
    assert(i_ret == 0);

    if (libvlc_media_discoverer_start(p_md) == -1)
    {
        test_log("warn: could not start md (not critical)\n");
    }
    else
    {
        assert(libvlc_media_discoverer_is_running(p_md));
        if (b_wait)
        {
            test_log("Press any keys to stop\n");
            getchar();
        }
        libvlc_media_discoverer_stop(p_md);
    }

    libvlc_event_detach(p_evm, libvlc_MediaListItemAdded,
                        ml_item_added, ((void*)0));
    libvlc_event_detach(p_evm, libvlc_MediaListItemDeleted,
                        ml_item_deleted, ((void*)0));

    libvlc_media_list_release(p_ml);
    libvlc_media_discoverer_release(p_md);
}
