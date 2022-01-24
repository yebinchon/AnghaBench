#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_slave_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLAVES_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC16(libvlc_instance_t *p_vlc,
                                  const char *psz_main_media,
                                  libvlc_media_slave_t *p_expected_slaves,
                                  unsigned i_expected_slaves)
{
    libvlc_media_t *p_m = FUNC8(p_vlc, SLAVES_DIR);
    FUNC0(p_m != NULL);

    FUNC13("Parse media dir to get subitems\n");
    FUNC11(p_m);

    char *psz_main_media_mrl = FUNC12(p_vlc, psz_main_media);
    FUNC0(psz_main_media_mrl != NULL);
    FUNC13("Main media mrl: '%s'\n", psz_main_media_mrl);

    FUNC13("Fetch main media from subitems\n");
    libvlc_media_list_t *p_ml = FUNC10(p_m);
    FUNC0(p_ml != NULL);
    FUNC5(p_ml);
    int i_count = FUNC3(p_ml);
    FUNC0(i_count > 0);
    libvlc_media_t *p_subm = NULL;
    for (int i = 0; i < i_count; ++i)
    {
        p_subm = FUNC4(p_ml, i);
        FUNC0(p_subm != NULL);
        char *psz_mrl = FUNC2(p_subm);
        FUNC0(psz_mrl != NULL);
        if (FUNC14(psz_main_media_mrl, psz_mrl) == 0)
        {
            FUNC13("Found main media\n");
            FUNC1(psz_mrl);
            break;
        }
        FUNC1(psz_mrl);
        FUNC9(p_subm);
        p_subm = NULL;
    }
    FUNC1(psz_main_media_mrl);
    FUNC7(p_ml);
    FUNC6(p_ml);

    FUNC0(p_subm != NULL);
    FUNC15(p_subm, p_expected_slaves, i_expected_slaves);
    FUNC9(p_subm);

    FUNC9(p_m);
}