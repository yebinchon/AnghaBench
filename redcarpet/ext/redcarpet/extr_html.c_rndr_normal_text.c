
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; int data; } ;


 int escape_html (struct buf*,int ,int ) ;

__attribute__((used)) static void
rndr_normal_text(struct buf *ob, const struct buf *text, void *opaque)
{
 if (text)
  escape_html(ob, text->data, text->size);
}
