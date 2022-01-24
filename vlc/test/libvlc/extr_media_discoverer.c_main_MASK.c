#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ i_cat; char* psz_name; int /*<<< orphan*/  psz_longname; } ;
typedef  TYPE_1__ libvlc_media_discoverer_description_t ;
typedef  scalar_t__ libvlc_media_discoverer_category_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ libvlc_media_discoverer_devices ; 
 scalar_t__ libvlc_media_discoverer_lan ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__***) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,scalar_t__) ; 
 scalar_t__ libvlc_media_discoverer_localdirs ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  test_defaults_args ; 
 int /*<<< orphan*/  test_defaults_nargs ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

int
FUNC10(int i_argc, char *ppsz_argv[])
{
    FUNC8();

    char *psz_test_name = i_argc > 1 ? ppsz_argv[1] : NULL;

    libvlc_instance_t *p_vlc = FUNC4(test_defaults_nargs,
                                          test_defaults_args);
    FUNC1(p_vlc != NULL);

    if (psz_test_name != NULL)
    {
        /* Test a specific service discovery from command line */
        FUNC0(0);
        FUNC7(p_vlc, psz_test_name, true);
        FUNC5(p_vlc);
        return 0;
    }

    for(libvlc_media_discoverer_category_t i_cat = libvlc_media_discoverer_devices;
        i_cat <= libvlc_media_discoverer_localdirs; i_cat ++)
    {
        FUNC9("== getting list of media_discoverer for %d category ==\n", i_cat);

        libvlc_media_discoverer_description_t **pp_services;
        ssize_t i_count =
            FUNC2(p_vlc, i_cat, &pp_services);
        if (i_count <= 0)
        {
            FUNC9("warn: no discoverers (not critical)\n");
            continue;
        }
        FUNC1(pp_services != NULL);

        for (unsigned int i = 0; i < i_count; ++i)
        {
            libvlc_media_discoverer_description_t *p_service = pp_services[i];

            FUNC1(i_cat == p_service->i_cat);
            FUNC9("= discoverer: name: '%s', longname: '%s' =\n",
                     p_service->psz_name, p_service->psz_longname);

#if 0
            if (!strncasecmp(p_service->psz_name, "podcast", 7)
             || i_cat == libvlc_media_discoverer_lan)
            {
                /* see comment in libvlc_media_discoverer_new() */
                continue;
            }
            test_discoverer(p_vlc, p_service->psz_name, false);
#endif
        }
        FUNC3(pp_services, i_count);
    }
    FUNC5(p_vlc);

    return 0;
}