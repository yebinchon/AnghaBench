
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_data {double* data; double max; double llen; } ;


 int move_cursor (int,int) ;
 int printf (char*) ;

__attribute__((used)) static void
show_bar(struct bar_data* d, int i, int n)
{
  double f = d->data[i] / d->max * d->llen;

  for (int line=0; line<d->llen; line++) {
    move_cursor(d->llen+1-line, n);
    if (line < f) {
      printf("\x1b[7m ");
    }
    else if (line == 0) {
      printf("\x1b[0m_");
    }
    else {
      printf("\x1b[0m ");
    }
  }
}
