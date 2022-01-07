
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int flags; } ;
struct buf {size_t size; char* data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int HTML_HARD_WRAP ;
 int bufput (struct buf*,char*,size_t) ;
 int bufputc (struct buf*,char) ;
 scalar_t__ isspace (char) ;
 int rndr_linebreak (struct buf*,void*) ;

__attribute__((used)) static void
rndr_paragraph(struct buf *ob, const struct buf *text, void *opaque)
{
 struct html_renderopt *options = opaque;
 size_t i = 0;

 if (ob->size) bufputc(ob, '\n');

 if (!text || !text->size)
  return;

 while (i < text->size && isspace(text->data[i])) i++;

 if (i == text->size)
  return;

 BUFPUTSL(ob, "<p>");
 if (options->flags & HTML_HARD_WRAP) {
  size_t org;
  while (i < text->size) {
   org = i;
   while (i < text->size && text->data[i] != '\n')
    i++;

   if (i > org)
    bufput(ob, text->data + org, i - org);





   if (i >= text->size - 1)
    break;

   rndr_linebreak(ob, opaque);
   i++;
  }
 } else {
  bufput(ob, &text->data[i], text->size - i);
 }
 BUFPUTSL(ob, "</p>\n");
}
