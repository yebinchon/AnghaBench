
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int MKD_TABLE_ALIGNMASK ;



 int MKD_TABLE_HEADER ;
 int bufput (struct buf*,int ,int ) ;

__attribute__((used)) static void
rndr_tablecell(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
 if (flags & MKD_TABLE_HEADER) {
  BUFPUTSL(ob, "<th");
 } else {
  BUFPUTSL(ob, "<td");
 }

 switch (flags & MKD_TABLE_ALIGNMASK) {
 case 130:
  BUFPUTSL(ob, " style=\"text-align: center\">");
  break;

 case 129:
  BUFPUTSL(ob, " style=\"text-align: left\">");
  break;

 case 128:
  BUFPUTSL(ob, " style=\"text-align: right\">");
  break;

 default:
  BUFPUTSL(ob, ">");
 }

 if (text)
  bufput(ob, text->data, text->size);

 if (flags & MKD_TABLE_HEADER) {
  BUFPUTSL(ob, "</th>\n");
 } else {
  BUFPUTSL(ob, "</td>\n");
 }
}
