#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * p_subitems; } ;
typedef  TYPE_1__ libvlc_media_t ;
typedef  int /*<<< orphan*/  libvlc_media_list_t ;
typedef  TYPE_1__ libvlc_media_list_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int,char const**) ; 
 int /*<<< orphan*/  libvlc_playback_mode_default ; 
 int /*<<< orphan*/  libvlc_playback_mode_loop ; 
 int /*<<< orphan*/  libvlc_playback_mode_repeat ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC19 (const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_t *md2;
    libvlc_media_t *md3;
    libvlc_media_t *md4;
    libvlc_media_t *md5;
    libvlc_media_list_t *ml;
    libvlc_media_list_t *ml2;
    libvlc_media_list_t *ml3;
    libvlc_media_list_t *ml4;
    libvlc_media_list_t *ml5;
    libvlc_media_list_t *ml6;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    FUNC17 ("Testing media player playback options()\n");

    vlc = FUNC12 (argc, argv);
    FUNC0 (vlc != NULL);

    /*
     *   Create the following media tree:
     *
     *  ml1:            0 ---- 1 ---- 2
     *                 /       |       \
     *  ml2&4:      0 -- 1     |   0 -- 1 -- 2
     *                         |
     *  ml3:    0 -- 1 -- 2 -- 3 -- 4 -- 5 -- 6
     *                    |                   |
     *  ml5&6:            0                 0 -- 1
     */

    md = FUNC10 (vlc, file);
    FUNC0(md);

    md2 = FUNC10 (vlc, file);
    FUNC0(md2);

    md3 = FUNC10 (vlc, file);
    FUNC0(md3);

    md4 = FUNC10 (vlc, file);
    FUNC0(md4);

    md5 = FUNC10 (vlc, file);
    FUNC0(md5);

    ml = FUNC2 (vlc);
    FUNC0 (ml != NULL);

    ml2 = FUNC2 (vlc);
    FUNC0 (ml2 != NULL);

    ml3 = FUNC2 (vlc);
    FUNC0 (ml3 != NULL);

    ml4 = FUNC2 (vlc);
    FUNC0 (ml4 != NULL);

    ml5 = FUNC2 (vlc);
    FUNC0 (ml5 != NULL);

    ml6 = FUNC2 (vlc);
    FUNC0 (ml6 != NULL);

    FUNC14 (vlc, ml2, file);
    FUNC14 (vlc, ml2, file);

    FUNC14 (vlc, ml3, file);
    FUNC14 (vlc, ml3, file);
    FUNC1 (ml3, md4);
    FUNC14 (vlc, ml3, file);
    FUNC14 (vlc, ml3, file);
    FUNC14 (vlc, ml3, file);
    FUNC1 (ml3, md5);

    FUNC14 (vlc, ml4, file);
    FUNC14 (vlc, ml4, file);
    FUNC14 (vlc, ml4, file);

    FUNC14 (vlc, ml5, file);

    FUNC14 (vlc, ml6, file);
    FUNC14 (vlc, ml6, file);

    md->p_subitems = ml2;
    md2->p_subitems = ml3;
    md3->p_subitems = ml4;
    md4->p_subitems = ml5;
    md5->p_subitems = ml6;

    FUNC1 (ml, md);
    FUNC1 (ml, md2);
    FUNC1 (ml, md3);

    mlp = FUNC4 (vlc);
    FUNC0(mlp);

    FUNC7 (mlp, ml);

    // Test default playback mode
    FUNC8(mlp, libvlc_playback_mode_default);

    FUNC5 (mlp, md);

    FUNC18 (mlp);

    FUNC11 (md);
    FUNC11 (md2);
    FUNC11 (md3);
    FUNC11 (md4);
    FUNC11 (md5);

    FUNC9 (mlp);

    while (FUNC3 (mlp))
        FUNC15();

    // Test looping playback mode
    FUNC17 ("Testing media player playback option - Loop\n");
    FUNC8(mlp, libvlc_playback_mode_loop);

    FUNC5 (mlp, md);

    FUNC18 (mlp);

    FUNC16 (mlp);

    // Test repeat playback mode
    FUNC17 ("Testing media player playback option - Repeat\n");
    FUNC8(mlp, libvlc_playback_mode_repeat);

    FUNC5 (mlp, md);

    FUNC18 (mlp);

    FUNC16 (mlp);

    FUNC6 (mlp);
    FUNC13 (vlc);
}