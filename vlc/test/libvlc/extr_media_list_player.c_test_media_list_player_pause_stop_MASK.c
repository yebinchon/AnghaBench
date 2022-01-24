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
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,char const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(const char** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_t *md;
    libvlc_media_list_t *ml;
    libvlc_media_list_player_t *mlp;

    const char * file = test_default_sample;

    FUNC13 ("Testing play and pause of %s using the media list.\n", file);

    vlc = FUNC10 (argc, argv);
    FUNC0 (vlc != NULL);

    md = FUNC8 (vlc, file);
    FUNC0(md);

    ml = FUNC2 (vlc);
    FUNC0 (ml != NULL);

    mlp = FUNC3 (vlc);
    FUNC0(mlp);

    FUNC1( ml, md);

    FUNC7( mlp, ml );

    FUNC5( mlp, md );

    FUNC14 (mlp);

    FUNC4 (mlp);

    FUNC12 (mlp);

    FUNC9 (md);
    FUNC6 (mlp);
    FUNC11 (vlc);
}