
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufput (struct buf*,int ,scalar_t__) ;
 int bufputc (struct buf*,char) ;

__attribute__((used)) static void
rndr_blockquote(struct buf *ob, const struct buf *text, void *opaque)
{
 if (ob->size) bufputc(ob, '\n');
 BUFPUTSL(ob, "<blockquote>\n");
 if (text) bufput(ob, text->data, text->size);
 BUFPUTSL(ob, "</blockquote>\n");
}
