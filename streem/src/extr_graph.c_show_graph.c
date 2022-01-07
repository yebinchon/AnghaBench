
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bar_data {int offset; int dlen; } ;


 int show_bar (struct bar_data*,int,int ) ;
 int show_yaxis (struct bar_data*) ;

__attribute__((used)) static void
show_graph(struct bar_data* d)
{
  int n = 1;

  show_yaxis(d);
  for (int i=d->offset; i<d->dlen; i++) {
    show_bar(d, i, n++);
  }
  for (int i=0; i<d->offset; i++) {
    show_bar(d, i, n++);
  }
}
