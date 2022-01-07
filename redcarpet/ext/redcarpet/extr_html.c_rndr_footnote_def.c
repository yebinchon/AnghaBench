
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t size; char* data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufprintf (struct buf*,char*,unsigned int) ;
 int bufput (struct buf*,char*,size_t) ;

__attribute__((used)) static void
rndr_footnote_def(struct buf *ob, const struct buf *text, unsigned int num, void *opaque)
{
 size_t i = 0;
 int pfound = 0;


 if (text) {
  while ((i+3) < text->size) {
   if (text->data[i++] != '<') continue;
   if (text->data[i++] != '/') continue;
   if (text->data[i++] != 'p' && text->data[i] != 'P') continue;
   if (text->data[i] != '>') continue;
   i -= 3;
   pfound = 1;
   break;
  }
 }

 bufprintf(ob, "\n<li id=\"fn%d\">\n", num);
 if (pfound) {
  bufput(ob, text->data, i);
  bufprintf(ob, "&nbsp;<a href=\"#fnref%d\">&#8617;</a>", num);
  bufput(ob, text->data + i, text->size - i);
 } else if (text) {
  bufput(ob, text->data, text->size);
 }
 BUFPUTSL(ob, "</li>\n");
}
