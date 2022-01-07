
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ i_cat; char* psz_name; int psz_longname; } ;
typedef TYPE_1__ libvlc_media_discoverer_description_t ;
typedef scalar_t__ libvlc_media_discoverer_category_t ;
typedef int libvlc_instance_t ;


 int alarm (int ) ;
 int assert (int) ;
 scalar_t__ libvlc_media_discoverer_devices ;
 scalar_t__ libvlc_media_discoverer_lan ;
 scalar_t__ libvlc_media_discoverer_list_get (int *,scalar_t__,TYPE_1__***) ;
 int libvlc_media_discoverer_list_release (TYPE_1__**,scalar_t__) ;
 scalar_t__ libvlc_media_discoverer_localdirs ;
 int * libvlc_new (int ,int ) ;
 int libvlc_release (int *) ;
 int strncasecmp (char*,char*,int) ;
 int test_defaults_args ;
 int test_defaults_nargs ;
 int test_discoverer (int *,char*,int) ;
 int test_init () ;
 int test_log (char*,...) ;

int
main(int i_argc, char *ppsz_argv[])
{
    test_init();

    char *psz_test_name = i_argc > 1 ? ppsz_argv[1] : ((void*)0);

    libvlc_instance_t *p_vlc = libvlc_new(test_defaults_nargs,
                                          test_defaults_args);
    assert(p_vlc != ((void*)0));

    if (psz_test_name != ((void*)0))
    {

        alarm(0);
        test_discoverer(p_vlc, psz_test_name, 1);
        libvlc_release(p_vlc);
        return 0;
    }

    for(libvlc_media_discoverer_category_t i_cat = libvlc_media_discoverer_devices;
        i_cat <= libvlc_media_discoverer_localdirs; i_cat ++)
    {
        test_log("== getting list of media_discoverer for %d category ==\n", i_cat);

        libvlc_media_discoverer_description_t **pp_services;
        ssize_t i_count =
            libvlc_media_discoverer_list_get(p_vlc, i_cat, &pp_services);
        if (i_count <= 0)
        {
            test_log("warn: no discoverers (not critical)\n");
            continue;
        }
        assert(pp_services != ((void*)0));

        for (unsigned int i = 0; i < i_count; ++i)
        {
            libvlc_media_discoverer_description_t *p_service = pp_services[i];

            assert(i_cat == p_service->i_cat);
            test_log("= discoverer: name: '%s', longname: '%s' =\n",
                     p_service->psz_name, p_service->psz_longname);
        }
        libvlc_media_discoverer_list_release(pp_services, i_count);
    }
    libvlc_release(p_vlc);

    return 0;
}
