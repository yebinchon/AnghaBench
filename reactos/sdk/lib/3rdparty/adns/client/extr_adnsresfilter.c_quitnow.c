
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int nonblock (int,int ) ;

void quitnow(int exitstatus) {
  nonblock(0,0);
  nonblock(1,0);
  exit(exitstatus);
}
