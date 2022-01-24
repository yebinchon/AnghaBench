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
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    FUNC12 ("Testing play_item_at_index of %s using the media list.\n", file);

    vlc = FUNC9 (argc, argv);
    FUNC0 (vlc != NULL);

    md = FUNC7 (vlc, file);
    FUNC0(md);

    ml = FUNC2 (vlc);
    FUNC0 (ml != NULL);

    mlp = FUNC3 (vlc);
    FUNC0(mlp);

    for (unsigned i = 0; i < 5; i++)
        FUNC1( ml, md );

    FUNC6( mlp, ml );
    FUNC4( mlp, 0 );

    FUNC13 (mlp);

    FUNC11 (mlp);

    FUNC8 (md);
    FUNC5 (mlp);
    FUNC10 (vlc);
}