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
struct distsamples {int character; scalar_t__ max; scalar_t__ count; } ;

/* Variables and functions */
 int FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int* spectrum_palette ; 
 int spectrum_palette_size ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3(struct distsamples *samples, long long tot) {
    int j;

     /* We convert samples into a index inside the palette
     * proportional to the percentage a given bucket represents.
     * This way intensity of the different parts of the spectrum
     * don't change relative to the number of requests, which avoids to
     * pollute the visualization with non-latency related info. */
    FUNC2("\033[38;5;0m"); /* Set foreground color to black. */
    for (j = 0; ; j++) {
        int coloridx =
            FUNC0((float) samples[j].count / tot * (spectrum_palette_size-1));
        int color = spectrum_palette[coloridx];
        FUNC2("\033[48;5;%dm%c", (int)color, samples[j].character);
        samples[j].count = 0;
        if (samples[j].max == 0) break; /* Last sample. */
    }
    FUNC2("\033[0m\n");
    FUNC1(stdout);
}