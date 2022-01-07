
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int grid; int ccolour; int title; int tabs; int sel; } ;


 int free (int ) ;
 int grid_destroy (int ) ;
 int screen_free_titles (struct screen*) ;

void
screen_free(struct screen *s)
{
 free(s->sel);
 free(s->tabs);
 free(s->title);
 free(s->ccolour);

 grid_destroy(s->grid);

 screen_free_titles(s);
}
