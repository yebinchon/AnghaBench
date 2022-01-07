
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int flags; } ;
struct buf {int size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int HTML_PRETTIFY ;
 int escape_html (struct buf*,int ,int ) ;

__attribute__((used)) static int
rndr_codespan(struct buf *ob, const struct buf *text, void *opaque)
{
 struct html_renderopt *options = opaque;
 if (options->flags & HTML_PRETTIFY)
  BUFPUTSL(ob, "<code class=\"prettyprint\">");
 else
  BUFPUTSL(ob, "<code>");
 if (text) escape_html(ob, text->data, text->size);
 BUFPUTSL(ob, "</code>");
 return 1;
}
