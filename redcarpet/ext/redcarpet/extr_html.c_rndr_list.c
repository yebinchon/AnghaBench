
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; char* data; } ;


 int MKD_LIST_ORDERED ;
 int bufput (struct buf*,char*,int) ;
 int bufputc (struct buf*,char) ;

__attribute__((used)) static void
rndr_list(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
 if (ob->size) bufputc(ob, '\n');
 bufput(ob, flags & MKD_LIST_ORDERED ? "<ol>\n" : "<ul>\n", 5);
 if (text) bufput(ob, text->data, text->size);
 bufput(ob, flags & MKD_LIST_ORDERED ? "</ol>\n" : "</ul>\n", 6);
}
