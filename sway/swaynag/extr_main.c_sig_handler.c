
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int swaynag ;
 int swaynag_destroy (int *) ;

void sig_handler(int signal) {
 swaynag_destroy(&swaynag);
 exit(EXIT_FAILURE);
}
