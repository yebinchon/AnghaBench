
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int SPAN_CALLBACK (char*,int,int ,int ,int ) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static int
rndr_image(struct buf *ob, const struct buf *link, const struct buf *title, const struct buf *alt, void *opaque)
{
 SPAN_CALLBACK("image", 3, buf2str(link), buf2str(title), buf2str(alt));
}
