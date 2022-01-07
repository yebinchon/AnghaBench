
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int SPAN_CALLBACK (char*,int,int ) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static int
rndr_underline(struct buf *ob, const struct buf *text, void *opaque)
{
 SPAN_CALLBACK("underline", 1, buf2str(text));
}
