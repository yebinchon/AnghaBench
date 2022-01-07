
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen {int title; } ;


 int VIS_CSTYLE ;
 int VIS_NL ;
 int VIS_OCTAL ;
 int VIS_TAB ;
 int free (int ) ;
 int utf8_stravis (int *,char const*,int) ;

void
screen_set_title(struct screen *s, const char *title)
{
 free(s->title);
 utf8_stravis(&s->title, title, VIS_OCTAL|VIS_CSTYLE|VIS_TAB|VIS_NL);
}
