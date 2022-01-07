
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {size_t size; char* data; } ;


 int bufput (struct buf*,char*,size_t) ;
 int bufputc (struct buf*,char) ;

__attribute__((used)) static void
unscape_text(struct buf *ob, struct buf *src)
{
 size_t i = 0, org;
 while (i < src->size) {
  org = i;
  while (i < src->size && src->data[i] != '\\')
   i++;

  if (i > org)
   bufput(ob, src->data + org, i - org);

  if (i + 1 >= src->size)
   break;

  bufputc(ob, src->data[i + 1]);
  i += 2;
 }
}
