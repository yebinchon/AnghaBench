
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int dummy; } ;
struct buf {scalar_t__ size; } ;


 scalar_t__ USE_XHTML (struct html_renderopt*) ;
 int bufputc (struct buf*,char) ;
 int bufputs (struct buf*,char*) ;

__attribute__((used)) static void
rndr_hrule(struct buf *ob, void *opaque)
{
 struct html_renderopt *options = opaque;
 if (ob->size) bufputc(ob, '\n');
 bufputs(ob, USE_XHTML(options) ? "<hr/>\n" : "<hr>\n");
}
