
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct distsamples {int character; scalar_t__ max; scalar_t__ count; } ;


 int ceil (float) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int* spectrum_palette ;
 int spectrum_palette_size ;
 int stdout ;

void showLatencyDistSamples(struct distsamples *samples, long long tot) {
    int j;






    printf("\033[38;5;0m");
    for (j = 0; ; j++) {
        int coloridx =
            ceil((float) samples[j].count / tot * (spectrum_palette_size-1));
        int color = spectrum_palette[coloridx];
        printf("\033[48;5;%dm%c", (int)color, samples[j].character);
        samples[j].count = 0;
        if (samples[j].max == 0) break;
    }
    printf("\033[0m\n");
    fflush(stdout);
}
