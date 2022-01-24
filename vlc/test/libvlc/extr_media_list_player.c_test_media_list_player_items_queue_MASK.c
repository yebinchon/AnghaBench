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
struct check_items_order_data {int dummy; } ;
typedef  int /*<<< orphan*/  libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_event_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct check_items_order_data*) ; 
 int /*<<< orphan*/  check_items_order_callback ; 
 int /*<<< orphan*/  libvlc_MediaListPlayerNextItemSet ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct check_items_order_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int,char const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct check_items_order_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (struct check_items_order_data*) ; 

__attribute__((used)) static void FUNC21(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    FUNC19 ("Testing media player item queue-ing\n");

    vlc = FUNC14 (argc, argv);
    FUNC0 (vlc != NULL);

    md = FUNC12 (vlc, file);
    FUNC0(*md);

    ml = FUNC4 (vlc);
    FUNC0 (ml != NULL);

    mlp = FUNC6 (vlc);
    FUNC0(*mlp);

    FUNC3 (ml, md);

    static struct check_items_order_data check;
    FUNC1(&check);
    FUNC17(&check, md);

    // Add three more media
    FUNC17(&check, FUNC16 (vlc, ml, file));
    FUNC17(&check, FUNC16 (vlc, ml, file));
    FUNC17(&check, FUNC16 (vlc, ml, file));

    // Add a node
    libvlc_media_t *node = FUNC11(vlc, "node");
    FUNC0(*node);
    FUNC3(ml, node);
    FUNC17(&check, node);

    // Add items to that node
    libvlc_media_list_t *subitems = FUNC13(node);
    FUNC17(&check, FUNC16(vlc, subitems, file));
    FUNC17(&check, FUNC16(vlc, subitems, file));
    FUNC17(&check, FUNC16(vlc, subitems, file));
    FUNC10(subitems);

    FUNC9 (mlp, ml);

    libvlc_event_manager_t * em = FUNC5(mlp);
    int val = FUNC2(em, libvlc_MediaListPlayerNextItemSet,
                                  check_items_order_callback, &check);
    FUNC0(val == 0);

    FUNC7(mlp);

    // Wait until all item are read
    FUNC20(&check);

    FUNC18 (mlp);

    FUNC8 (mlp);
    FUNC15 (vlc);
}