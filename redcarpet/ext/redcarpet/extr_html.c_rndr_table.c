
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufput (struct buf*,int ,scalar_t__) ;
 int bufputc (struct buf*,char) ;

__attribute__((used)) static void
rndr_table(struct buf *ob, const struct buf *header, const struct buf *body, void *opaque)
{
 if (ob->size) bufputc(ob, '\n');
 BUFPUTSL(ob, "<table><thead>\n");
 if (header)
  bufput(ob, header->data, header->size);
 BUFPUTSL(ob, "</thead><tbody>\n");
 if (body)
  bufput(ob, body->data, body->size);
 BUFPUTSL(ob, "</tbody></table>\n");
}
