
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int BLOCK_CALLBACK (char*,int,int ) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_normal_text(struct buf *ob, const struct buf *text, void *opaque)
{
 BLOCK_CALLBACK("normal_text", 1, buf2str(text));
}
