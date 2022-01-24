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
typedef  int /*<<< orphan*/  libvlc_renderer_discoverer_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  libvlc_RendererDiscovererItemAdded ; 
 int /*<<< orphan*/  libvlc_RendererDiscovererItemDeleted ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  renderer_discoverer_item_added ; 
 int /*<<< orphan*/  renderer_discoverer_item_deleted ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(libvlc_instance_t *p_vlc, const char *psz_name)
{
    FUNC8("creating and starting discoverer %s\n", psz_name);

    libvlc_renderer_discoverer_t *p_rd =
        FUNC4(p_vlc, psz_name);
    FUNC0(p_rd != NULL);

    libvlc_event_manager_t *p_evm = FUNC3(p_rd);
    FUNC0(*p_evm);

    int i_ret;
    i_ret = FUNC2(p_evm, libvlc_RendererDiscovererItemAdded,
                                renderer_discoverer_item_added, NULL);
    FUNC0(i_ret == 0);
    i_ret = FUNC2(p_evm, libvlc_RendererDiscovererItemDeleted,
                                renderer_discoverer_item_deleted, NULL);
    FUNC0(i_ret == 0);

    if (FUNC6(p_rd) == -1)
    {
        FUNC8("warn: could not start md (not critical)\n");
    }
    else
    {
        FUNC8("Press any keys to stop\n");
        FUNC1();
        FUNC7(p_rd);
    }

    FUNC5(p_rd);
}