
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t size; char* data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufput (struct buf*,char*,size_t) ;

__attribute__((used)) static void
rndr_listitem(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
 BUFPUTSL(ob, "<li>");
 if (text) {
  size_t size = text->size;
  while (size && text->data[size - 1] == '\n')
   size--;

  bufput(ob, text->data, size);
 }
 BUFPUTSL(ob, "</li>\n");
}
