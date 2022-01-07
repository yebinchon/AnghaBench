
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int flags; int (* link_attributes ) (struct buf*,struct buf const*,void*) ;} ;
struct buf {scalar_t__ size; scalar_t__ data; } ;
typedef enum mkd_autolink { ____Placeholder_mkd_autolink } mkd_autolink ;


 int BUFPUTSL (struct buf*,char*) ;
 int HTML_SAFELINK ;
 int MKDA_EMAIL ;
 scalar_t__ bufprefix (struct buf const*,char*) ;
 int bufputc (struct buf*,char) ;
 int escape_href (struct buf*,scalar_t__,scalar_t__) ;
 int escape_html (struct buf*,scalar_t__,scalar_t__) ;
 int sd_autolink_issafe (scalar_t__,scalar_t__) ;
 int stub1 (struct buf*,struct buf const*,void*) ;

__attribute__((used)) static int
rndr_autolink(struct buf *ob, const struct buf *link, enum mkd_autolink type, void *opaque)
{
 struct html_renderopt *options = opaque;

 if (!link || !link->size)
  return 0;

 if ((options->flags & HTML_SAFELINK) != 0 &&
  !sd_autolink_issafe(link->data, link->size) &&
  type != MKDA_EMAIL)
  return 0;

 BUFPUTSL(ob, "<a href=\"");
 if (type == MKDA_EMAIL)
  BUFPUTSL(ob, "mailto:");
 escape_href(ob, link->data, link->size);

 if (options->link_attributes) {
  bufputc(ob, '\"');
  options->link_attributes(ob, link, opaque);
  bufputc(ob, '>');
 } else {
  BUFPUTSL(ob, "\">");
 }






 if (bufprefix(link, "mailto:") == 0) {
  escape_html(ob, link->data + 7, link->size - 7);
 } else {
  escape_html(ob, link->data, link->size);
 }

 BUFPUTSL(ob, "</a>");

 return 1;
}
