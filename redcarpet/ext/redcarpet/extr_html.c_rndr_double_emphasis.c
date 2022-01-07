
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int bufput (struct buf*,int ,int ) ;

__attribute__((used)) static int
rndr_double_emphasis(struct buf *ob, const struct buf *text, void *opaque)
{
 if (!text || !text->size)
  return 0;

 BUFPUTSL(ob, "<strong>");
 bufput(ob, text->data, text->size);
 BUFPUTSL(ob, "</strong>");

 return 1;
}
