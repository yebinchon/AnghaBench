
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int ccolour; } ;


 int free (int ) ;
 int xstrdup (char const*) ;

void
screen_set_cursor_colour(struct screen *s, const char *colour)
{
 free(s->ccolour);
 s->ccolour = xstrdup(colour);
}
