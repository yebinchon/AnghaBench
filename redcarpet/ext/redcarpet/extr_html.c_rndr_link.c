
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html_renderopt {int flags; int (* link_attributes ) (struct buf*,struct buf const*,void*) ;} ;
struct buf {scalar_t__ size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int HTML_SAFELINK ;
 int bufput (struct buf*,int ,scalar_t__) ;
 int bufputc (struct buf*,char) ;
 int escape_href (struct buf*,int ,scalar_t__) ;
 int escape_html (struct buf*,int ,scalar_t__) ;
 int sd_autolink_issafe (int ,scalar_t__) ;
 int stub1 (struct buf*,struct buf const*,void*) ;

__attribute__((used)) static int
rndr_link(struct buf *ob, const struct buf *link, const struct buf *title, const struct buf *content, void *opaque)
{
 struct html_renderopt *options = opaque;

 if (link != ((void*)0) && (options->flags & HTML_SAFELINK) != 0 && !sd_autolink_issafe(link->data, link->size))
  return 0;

 BUFPUTSL(ob, "<a href=\"");

 if (link && link->size)
  escape_href(ob, link->data, link->size);

 if (title && title->size) {
  BUFPUTSL(ob, "\" title=\"");
  escape_html(ob, title->data, title->size);
 }

 if (options->link_attributes) {
  bufputc(ob, '\"');
  options->link_attributes(ob, link, opaque);
  bufputc(ob, '>');
 } else {
  BUFPUTSL(ob, "\">");
 }

 if (content && content->size) bufput(ob, content->data, content->size);
 BUFPUTSL(ob, "</a>");
 return 1;
}
