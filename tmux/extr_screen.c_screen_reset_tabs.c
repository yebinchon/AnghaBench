
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen {int * tabs; } ;


 int * bit_alloc (int) ;
 int bit_set (int *,int) ;
 int fatal (char*) ;
 int free (int *) ;
 int screen_size_x (struct screen*) ;

void
screen_reset_tabs(struct screen *s)
{
 u_int i;

 free(s->tabs);

 if ((s->tabs = bit_alloc(screen_size_x(s))) == ((void*)0))
  fatal("bit_alloc failed");
 for (i = 8; i < screen_size_x(s); i += 8)
  bit_set(s->tabs, i);
}
