
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int dummy; } ;
struct buf {int dummy; } ;


 scalar_t__ USE_XHTML (struct html_renderopt*) ;
 int bufputs (struct buf*,char*) ;

__attribute__((used)) static int
rndr_linebreak(struct buf *ob, void *opaque)
{
 struct html_renderopt *options = opaque;
 bufputs(ob, USE_XHTML(options) ? "<br/>\n" : "<br>\n");
 return 1;
}
