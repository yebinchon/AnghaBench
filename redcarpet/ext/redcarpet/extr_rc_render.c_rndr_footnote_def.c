
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int BLOCK_CALLBACK (char*,int,int ,int ) ;
 int INT2FIX (unsigned int) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_footnote_def(struct buf *ob, const struct buf *text, unsigned int num, void *opaque)
{
 BLOCK_CALLBACK("footnote_def", 2, buf2str(text), INT2FIX(num));
}
