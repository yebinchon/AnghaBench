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
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_media_discoverer_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  libvlc_MediaListItemAdded ; 
 int /*<<< orphan*/  libvlc_MediaListItemDeleted ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ml_item_added ; 
 int /*<<< orphan*/  ml_item_deleted ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static void
FUNC13(libvlc_instance_t *p_vlc, const char *psz_name, bool b_wait)
{
    FUNC12("creating and starting discoverer %s\n", psz_name);

    libvlc_media_discoverer_t *p_md =
        FUNC6(p_vlc, psz_name);
    FUNC0(p_md != NULL);

    libvlc_media_list_t *p_ml = FUNC5(p_md);
    FUNC0(p_ml != NULL);

    libvlc_event_manager_t *p_evm = FUNC10(p_ml);
    FUNC0(*p_evm);

    int i_ret;
    i_ret = FUNC2(p_evm, libvlc_MediaListItemAdded,
                                ml_item_added, NULL);
    FUNC0(i_ret == 0);
    i_ret = FUNC2(p_evm, libvlc_MediaListItemDeleted,
                                ml_item_deleted, NULL);
    FUNC0(i_ret == 0);

    if (FUNC8(p_md) == -1)
    {
        FUNC12("warn: could not start md (not critical)\n");
    }
    else
    {
        FUNC0(FUNC4(p_md));
        if (b_wait)
        {
            FUNC12("Press any keys to stop\n");
            FUNC1();
        }
        FUNC9(p_md);
    }

    FUNC3(p_evm, libvlc_MediaListItemAdded,
                        ml_item_added, NULL);
    FUNC3(p_evm, libvlc_MediaListItemDeleted,
                        ml_item_deleted, NULL);

    FUNC11(p_ml);
    FUNC7(p_md);
}