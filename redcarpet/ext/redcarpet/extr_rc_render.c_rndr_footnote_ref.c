
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int INT2FIX (unsigned int) ;
 int SPAN_CALLBACK (char*,int,int ) ;

__attribute__((used)) static int
rndr_footnote_ref(struct buf *ob, unsigned int num, void *opaque)
{
 SPAN_CALLBACK("footnote_ref", 1, INT2FIX(num));
}
