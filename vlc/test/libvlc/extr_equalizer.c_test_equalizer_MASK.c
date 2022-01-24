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
typedef  int /*<<< orphan*/  libvlc_media_player_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
typedef  int /*<<< orphan*/  libvlc_equalizer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (float) ; 
 float FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 () ; 
 float FUNC4 (unsigned int) ; 
 float FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,float,unsigned int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int,char const**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static void FUNC19 (const char ** argv, int argc)
{
    libvlc_instance_t *vlc;
    libvlc_media_player_t *mp;
    libvlc_equalizer_t *equalizer;
    unsigned u_presets, u_bands;

    FUNC18 ("Testing equalizer\n");

    vlc = FUNC16 (argc, argv);
    FUNC0 (NULL != vlc);

    mp = FUNC13 (vlc);
    FUNC0 (NULL != mp);

    // presets

    FUNC18 ("Testing equalizer presets\n");

    u_presets = FUNC6();
    FUNC0 (u_presets > 0);

    for (unsigned i = 0; i < u_presets; i++)
    {
        FUNC0 (NULL != FUNC7(i));

        equalizer = FUNC9(i);
        FUNC0 (*equalizer);

        FUNC10(equalizer);
    }

    // preset out of range

    FUNC0 (NULL == FUNC7(u_presets));
    FUNC0 (NULL == FUNC9(u_presets));

    // bands

    FUNC18 ("Testing equalizer bands\n");

    u_bands = FUNC3();
    FUNC0 (u_bands > 0);

    for (unsigned i = 0; i < u_bands; i++)
        FUNC0 (-1.0f != FUNC4(i));

    // band out of range

    FUNC0 (-1.0f == FUNC4(u_bands));

    // initialisation

    FUNC18 ("Testing equalizer initialisation\n");

    equalizer = FUNC8();
    FUNC0 (*equalizer);

    FUNC0 (FUNC5(equalizer) == 0.0f);

    for (unsigned i = 0; i < u_bands; i++)
        FUNC0 (FUNC2(equalizer, i) == 0.0f);

    // preamp (range -20.0 to 20.0)

    FUNC18 ("Testing equalizer preamp\n");

    FUNC0 (0 == FUNC12 (equalizer, 19.9f));
    FUNC0 (FUNC5(equalizer) == 19.9f);

    FUNC0 (0 == FUNC12 (equalizer, 20.0f));
    FUNC0 (FUNC5(equalizer) == 20.0f);

    FUNC0 (0 == FUNC12 (equalizer, 20.1f));
    FUNC0 (FUNC5(equalizer) == 20.0f);

    FUNC0 (0 == FUNC12 (equalizer, -19.9f));
    FUNC0 (FUNC5(equalizer) == -19.9f);

    FUNC0 (0 == FUNC12 (equalizer, -20.0f));
    FUNC0 (FUNC5(equalizer) == -20.0f);

    FUNC0 (0 == FUNC12 (equalizer, -20.1f));
    FUNC0 (FUNC5(equalizer) == -20.0f);

    // amp at index (range -20.0 to 20.0)

    FUNC18 ("Testing equalizer amp at index\n");

    for (unsigned i = 0; i < u_bands; i++)
    {
        FUNC0 (0 == FUNC11 (equalizer, 19.9f, i));
        FUNC0 (FUNC2 (equalizer, i) == 19.9f);

        FUNC0 (0 == FUNC11 (equalizer, 20.0f, i));
        FUNC0 (FUNC2 (equalizer, i) == 20.0f);

        FUNC0 (0 == FUNC11 (equalizer, 20.1f, i));
        FUNC0 (FUNC2 (equalizer, i) == 20.0f);

        FUNC0 (0 == FUNC11 (equalizer, -19.9f, i));
        FUNC0 (FUNC2 (equalizer, i) == -19.9f);

        FUNC0 (0 == FUNC11 (equalizer, -20.0f, i));
        FUNC0 (FUNC2 (equalizer, i) == -20.0f);

        FUNC0 (0 == FUNC11 (equalizer, -20.1f, i));
        FUNC0 (FUNC2 (equalizer, i) == -20.0f);
    }

    // amp at index out of range

    FUNC0 (FUNC1(FUNC2 (equalizer, u_bands)));
    FUNC0 (-1 == FUNC11 (equalizer, 19.9f, u_bands));

    // no equalizer

    FUNC18 ("Testing release NULL\n");

    FUNC10 (NULL);

    // media player

    FUNC18 ("Testing set equalizer\n");

    FUNC0 (0 == FUNC15(mp, NULL));
    FUNC0 (0 == FUNC15(mp, equalizer));

    // maximum string length (test string concatenation)

    FUNC18 ("Testing equalizer-bands string limit\n");

    for (unsigned i = 0; i < u_bands; i++)
        FUNC0 (0 == FUNC11 (equalizer, -19.1234567f, i));

    FUNC0 (0 == FUNC15(mp, equalizer));

    // cleanup

    FUNC18 ("Testing equalizer cleanup\n");

    FUNC10 (equalizer);

    FUNC18 ("Finished testing equalizer\n");

    FUNC14 (mp);

    FUNC17 (vlc);
}