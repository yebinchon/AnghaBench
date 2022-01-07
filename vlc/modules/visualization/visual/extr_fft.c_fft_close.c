
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_state ;


 int free (int *) ;

void fft_close(fft_state *state) {
    free( state );
}
