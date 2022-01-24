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
typedef  int /*<<< orphan*/  mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

__attribute__((used)) static bo_t *FUNC5(mp4mux_trackinfo_t *p_track)
{
    bo_t *wave;
    bo_t *box;

    wave = FUNC4("wave");
    if(wave)
    {
        box = FUNC4("frma");
        if(box)
        {
            FUNC2(box, "mp4a");
            FUNC3(wave, box);
        }

        box = FUNC4("mp4a");
        if(box)
        {
            FUNC1(box, 0);
            FUNC3(wave, box);
        }

        box = FUNC0(p_track);
        FUNC3(wave, box);

        box = FUNC4("srcq");
        if(box)
        {
            FUNC1(box, 0x40);
            FUNC3(wave, box);
        }

        /* wazza ? */
        FUNC1(wave, 8); /* new empty box */
        FUNC1(wave, 0); /* box label */
    }
    return wave;
}