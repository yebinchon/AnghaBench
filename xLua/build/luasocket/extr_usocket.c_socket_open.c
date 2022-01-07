
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 int SIG_IGN ;
 int signal (int ,int ) ;

int socket_open(void) {

    signal(SIGPIPE, SIG_IGN);
    return 1;
}
