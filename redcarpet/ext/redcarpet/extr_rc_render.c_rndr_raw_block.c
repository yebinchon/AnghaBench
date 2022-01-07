
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int BLOCK_CALLBACK (char*,int,int ) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_raw_block(struct buf *ob, const struct buf *text, void *opaque)
{
 BLOCK_CALLBACK("block_html", 1, buf2str(text));
}
