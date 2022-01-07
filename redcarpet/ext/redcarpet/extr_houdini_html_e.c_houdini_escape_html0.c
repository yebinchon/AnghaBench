
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct buf {int dummy; } ;


 int ESCAPE_GROW_FACTOR (size_t) ;
 int * HTML_ESCAPES ;
 size_t* HTML_ESCAPE_TABLE ;
 int bufgrow (struct buf*,int ) ;
 int bufput (struct buf*,size_t const*,size_t) ;
 int bufputc (struct buf*,char) ;
 int bufputs (struct buf*,int ) ;

void
houdini_escape_html0(struct buf *ob, const uint8_t *src, size_t size, int secure)
{
 size_t i = 0, org, esc = 0;

 bufgrow(ob, ESCAPE_GROW_FACTOR(size));

 while (i < size) {
  org = i;
  while (i < size && (esc = HTML_ESCAPE_TABLE[src[i]]) == 0)
   i++;

  if (i > org)
   bufput(ob, src + org, i - org);


  if (i >= size)
   break;


  if (src[i] == '/' && !secure)
   bufputc(ob, '/');
  else
   bufputs(ob, HTML_ESCAPES[esc]);

  i++;
 }
}
