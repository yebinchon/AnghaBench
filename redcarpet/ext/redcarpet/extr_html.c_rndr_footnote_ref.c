
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;


 int bufprintf (struct buf*,char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int
rndr_footnote_ref(struct buf *ob, unsigned int num, void *opaque)
{
 bufprintf(ob, "<sup id=\"fnref%d\"><a href=\"#fn%d\">%d</a></sup>", num, num, num);
 return 1;
}
