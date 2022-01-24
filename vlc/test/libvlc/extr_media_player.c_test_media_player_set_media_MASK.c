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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* test_default_sample ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(const char** argv, int argc)
{
    const char * file = test_default_sample;

    FUNC10 ("Testing set_media\n");

    libvlc_instance_t *vlc = FUNC7 (argc, argv);
    FUNC0 (vlc != NULL);

    libvlc_media_t *md = FUNC1 (vlc, file);
    FUNC0 (md != NULL);

    libvlc_media_player_t *mp = FUNC2 (vlc);
    FUNC0 (mp != NULL);

    FUNC4 (mp, md);

    FUNC6 (md);

    FUNC9(mp);

    FUNC5 (mp);
    FUNC3 (mp);
    FUNC8 (vlc);
}