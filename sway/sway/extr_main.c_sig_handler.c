
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int sway_terminate (int ) ;

void sig_handler(int signal) {
 sway_terminate(EXIT_SUCCESS);
}
