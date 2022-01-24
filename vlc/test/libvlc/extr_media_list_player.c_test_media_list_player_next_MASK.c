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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    FUNC15 ("Testing media player next()\n");

    vlc = FUNC11 (argc, argv);
    FUNC0 (vlc != NULL);

    md = FUNC9 (vlc, file);
    FUNC0(md);

    ml = FUNC2 (vlc);
    FUNC0 (ml != NULL);

    mlp = FUNC3 (vlc);
    FUNC0(mlp);

    FUNC1 (ml, md);

    // Add three media
    FUNC13 (vlc, ml, file);
    FUNC13 (vlc, ml, file);
    FUNC13 (vlc, ml, file);

    FUNC8 (mlp, ml);

    FUNC6 (mlp, md);

    FUNC10 (md);

    FUNC16 (mlp);

    FUNC4 (mlp);

    FUNC16 (mlp);

    FUNC5 (mlp);
    FUNC4 (mlp);

    FUNC16 (mlp);

    FUNC14 (mlp);

    FUNC4 (mlp);

    FUNC16 (mlp);

    FUNC14 (mlp);

    FUNC7 (mlp);
    FUNC12 (vlc);
}