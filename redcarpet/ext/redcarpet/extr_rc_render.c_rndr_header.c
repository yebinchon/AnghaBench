
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int BLOCK_CALLBACK (char*,int,int ,int ) ;
 int INT2FIX (int) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static void
rndr_header(struct buf *ob, const struct buf *text, int level, void *opaque)
{
 BLOCK_CALLBACK("header", 2, buf2str(text), INT2FIX(level));
}
