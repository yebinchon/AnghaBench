
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int BLOCK_CALLBACK (char*,int,int ,int ) ;
 int CSTR2SYM (char*) ;
 int MKD_LIST_ORDERED ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_listitem(struct buf *ob, const struct buf *text, int flags, void *opaque)
{
 BLOCK_CALLBACK("list_item", 2, buf2str(text),
   (flags & MKD_LIST_ORDERED) ? CSTR2SYM("ordered") : CSTR2SYM("unordered"));
}
