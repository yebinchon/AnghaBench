
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {scalar_t__ size; int data; } ;


 int bufput (struct buf*,int ,scalar_t__) ;

__attribute__((used)) static int
toc_link(struct buf *ob, const struct buf *link, const struct buf *title, const struct buf *content, void *opaque)
{
 if (content && content->size)
  bufput(ob, content->data, content->size);
 return 1;
}
