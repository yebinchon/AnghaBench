
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf {int dummy; } ;
typedef enum mkd_autolink { ____Placeholder_mkd_autolink } mkd_autolink ;


 int CSTR2SYM (char*) ;
 int MKDA_NORMAL ;
 int SPAN_CALLBACK (char*,int,int ,int ) ;
 int buf2str (struct buf const*) ;

__attribute__((used)) static int
rndr_autolink(struct buf *ob, const struct buf *link, enum mkd_autolink type, void *opaque)
{
 SPAN_CALLBACK("autolink", 2, buf2str(link),
  type == MKDA_NORMAL ? CSTR2SYM("url") : CSTR2SYM("email"));
}
