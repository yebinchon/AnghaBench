
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libvlc_media_t ;
typedef int libvlc_media_slave_t ;
typedef int libvlc_media_list_t ;
typedef int libvlc_instance_t ;


 int SLAVES_DIR ;
 int assert (int) ;
 int free (char*) ;
 char* libvlc_media_get_mrl (int *) ;
 int libvlc_media_list_count (int *) ;
 int * libvlc_media_list_item_at_index (int *,int) ;
 int libvlc_media_list_lock (int *) ;
 int libvlc_media_list_release (int *) ;
 int libvlc_media_list_unlock (int *) ;
 int * libvlc_media_new_path (int *,int ) ;
 int libvlc_media_release (int *) ;
 int * libvlc_media_subitems (int *) ;
 int media_parse_sync (int *) ;
 char* path_to_mrl (int *,char const*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_expected_slaves (int *,int *,unsigned int) ;

__attribute__((used)) static void
test_media_has_slaves_from_parent(libvlc_instance_t *p_vlc,
                                  const char *psz_main_media,
                                  libvlc_media_slave_t *p_expected_slaves,
                                  unsigned i_expected_slaves)
{
    libvlc_media_t *p_m = libvlc_media_new_path(p_vlc, SLAVES_DIR);
    assert(p_m != ((void*)0));

    printf("Parse media dir to get subitems\n");
    media_parse_sync(p_m);

    char *psz_main_media_mrl = path_to_mrl(p_vlc, psz_main_media);
    assert(psz_main_media_mrl != ((void*)0));
    printf("Main media mrl: '%s'\n", psz_main_media_mrl);

    printf("Fetch main media from subitems\n");
    libvlc_media_list_t *p_ml = libvlc_media_subitems(p_m);
    assert(p_ml != ((void*)0));
    libvlc_media_list_lock(p_ml);
    int i_count = libvlc_media_list_count(p_ml);
    assert(i_count > 0);
    libvlc_media_t *p_subm = ((void*)0);
    for (int i = 0; i < i_count; ++i)
    {
        p_subm = libvlc_media_list_item_at_index(p_ml, i);
        assert(p_subm != ((void*)0));
        char *psz_mrl = libvlc_media_get_mrl(p_subm);
        assert(psz_mrl != ((void*)0));
        if (strcmp(psz_main_media_mrl, psz_mrl) == 0)
        {
            printf("Found main media\n");
            free(psz_mrl);
            break;
        }
        free(psz_mrl);
        libvlc_media_release(p_subm);
        p_subm = ((void*)0);
    }
    free(psz_main_media_mrl);
    libvlc_media_list_unlock(p_ml);
    libvlc_media_list_release(p_ml);

    assert(p_subm != ((void*)0));
    test_expected_slaves(p_subm, p_expected_slaves, i_expected_slaves);
    libvlc_media_release(p_subm);

    libvlc_media_release(p_m);
}
