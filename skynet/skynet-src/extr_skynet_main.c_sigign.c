
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;


 int SIGPIPE ;
 int SIG_IGN ;
 int sigaction (int ,struct sigaction*,int ) ;
 int sigemptyset (int *) ;

int sigign() {
 struct sigaction sa;
 sa.sa_handler = SIG_IGN;
 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 sigaction(SIGPIPE, &sa, 0);
 return 0;
}
