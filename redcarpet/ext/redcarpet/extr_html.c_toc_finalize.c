
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ current_level; } ;
struct html_renderopt {TYPE_1__ toc_data; } ;
struct buf {int dummy; } ;


 int BUFPUTSL (struct buf*,char*) ;

__attribute__((used)) static void
toc_finalize(struct buf *ob, void *opaque)
{
 struct html_renderopt *options = opaque;

 while (options->toc_data.current_level > 0) {
  BUFPUTSL(ob, "</li>\n</ul>\n");
  options->toc_data.current_level--;
 }
}
