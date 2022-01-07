
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_data {int llen; int dlen; int max; } ;


 int move_cursor (int,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
show_yaxis(struct bar_data* d)
{
  move_cursor(1,2);
  printf("\x1b[0m");
  for (int i=0; i<d->llen; i++) {
    move_cursor(i+2, d->dlen+1);
    if (i == 0) {
      printf("├ %d   ", d->max);
    }
    else if (i == d->llen-1) {
      printf("├ 0");
    }
    else {
      printf("│");
    }
  }
}
