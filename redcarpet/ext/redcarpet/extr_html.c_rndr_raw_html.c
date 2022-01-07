
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int flags; } ;
struct buf {int size; int data; } ;


 int HTML_ESCAPE ;
 int HTML_SKIP_HTML ;
 int HTML_SKIP_IMAGES ;
 int HTML_SKIP_LINKS ;
 int HTML_SKIP_STYLE ;
 int bufput (struct buf*,int ,int ) ;
 int escape_html (struct buf*,int ,int ) ;
 scalar_t__ sdhtml_is_tag (int ,int ,char*) ;

__attribute__((used)) static int
rndr_raw_html(struct buf *ob, const struct buf *text, void *opaque)
{
 struct html_renderopt *options = opaque;



 if((options->flags & HTML_ESCAPE) != 0) {
  escape_html(ob, text->data, text->size);
  return 1;
 }

 if ((options->flags & HTML_SKIP_HTML) != 0)
  return 1;

 if ((options->flags & HTML_SKIP_STYLE) != 0 &&
  sdhtml_is_tag(text->data, text->size, "style"))
  return 1;

 if ((options->flags & HTML_SKIP_LINKS) != 0 &&
  sdhtml_is_tag(text->data, text->size, "a"))
  return 1;

 if ((options->flags & HTML_SKIP_IMAGES) != 0 &&
  sdhtml_is_tag(text->data, text->size, "img"))
  return 1;

 bufput(ob, text->data, text->size);
 return 1;
}
