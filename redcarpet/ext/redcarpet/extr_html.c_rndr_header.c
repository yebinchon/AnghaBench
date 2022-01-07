
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* nesting_bounds; } ;
struct html_renderopt {int flags; TYPE_1__ toc_data; } ;
struct buf {scalar_t__ size; int data; } ;


 int BUFPUTSL (struct buf*,char*) ;
 int HTML_TOC ;
 int bufprintf (struct buf*,char*,int) ;
 int bufput (struct buf*,int ,scalar_t__) ;
 int bufputc (struct buf*,char) ;
 int rndr_header_anchor (struct buf*,struct buf const*) ;

__attribute__((used)) static void
rndr_header(struct buf *ob, const struct buf *text, int level, void *opaque)
{
 struct html_renderopt *options = opaque;

 if (ob->size)
  bufputc(ob, '\n');

 if ((options->flags & HTML_TOC) && level >= options->toc_data.nesting_bounds[0] &&
      level <= options->toc_data.nesting_bounds[1]) {
  bufprintf(ob, "<h%d id=\"", level);
  rndr_header_anchor(ob, text);
  BUFPUTSL(ob, "\">");
 }
 else
  bufprintf(ob, "<h%d>", level);

 if (text) bufput(ob, text->data, text->size);
 bufprintf(ob, "</h%d>\n", level);
}
