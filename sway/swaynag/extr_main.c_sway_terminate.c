
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int swaynag ;
 int swaynag_destroy (int *) ;

void sway_terminate(int code) {
 swaynag_destroy(&swaynag);
 exit(code);
}
