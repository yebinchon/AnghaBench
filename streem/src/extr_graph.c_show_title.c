
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_data {scalar_t__ tlen; int col; int title; } ;


 int clear () ;
 int erase_cursor () ;
 int fwrite (int ,int,int,int ) ;
 int move_cursor (int,int) ;
 int stdout ;

__attribute__((used)) static void
show_title(struct bar_data* d)
{
  int start;

  erase_cursor();
  clear();
  if (d->tlen == 0) return;
  start = (d->col - d->tlen) / 2;
  move_cursor(1, start);
  fwrite(d->title, d->tlen, 1, stdout);
}
