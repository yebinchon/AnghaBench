
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int * sel; } ;


 int free (int *) ;

void
screen_clear_selection(struct screen *s)
{
 free(s->sel);
 s->sel = ((void*)0);
}
