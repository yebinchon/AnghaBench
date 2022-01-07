
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ rand () ;
 int srand (int ) ;
 int time (int *) ;

void
fill_random(char *buf, int len)
{
 int i;
 srand(time(((void*)0)));
 for (i = 0; i < len; i++) {
  buf[i] = (char)rand();
 }
}
