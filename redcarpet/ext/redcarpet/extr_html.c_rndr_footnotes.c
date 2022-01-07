
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int dummy; } ;
struct buf {scalar_t__ size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 scalar_t__ USE_XHTML (struct html_renderopt*) ;
 int bufput (struct buf*,int ,scalar_t__) ;
 int bufputc (struct buf*,char) ;
 int bufputs (struct buf*,char*) ;

__attribute__((used)) static void
rndr_footnotes(struct buf *ob, const struct buf *text, void *opaque)
{
 struct html_renderopt *options = opaque;

 if (ob->size) bufputc(ob, '\n');

 BUFPUTSL(ob, "<div class=\"footnotes\">\n");
 bufputs(ob, USE_XHTML(options) ? "<hr/>\n" : "<hr>\n");
 BUFPUTSL(ob, "<ol>\n");

 if (text)
  bufput(ob, text->data, text->size);

 BUFPUTSL(ob, "\n</ol>\n</div>\n");
}
