
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufput (struct buf*,int ,int ) ;

__attribute__((used)) static void
rndr_tablerow(struct buf *ob, const struct buf *text, void *opaque)
{
 BUFPUTSL(ob, "<tr>\n");
 if (text)
  bufput(ob, text->data, text->size);
 BUFPUTSL(ob, "</tr>\n");
}
