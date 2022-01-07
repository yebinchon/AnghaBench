
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* autolink ) (struct buf*,struct buf*,int ,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; scalar_t__ in_link_body; } ;
struct buf {size_t size; } ;


 int BUFFER_SPAN ;
 int MKDA_NORMAL ;
 int SD_AUTOLINK_SHORT_DOMAINS ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 size_t sd_autolink__url (size_t*,struct buf*,int *,size_t,size_t,int ) ;
 int stub1 (struct buf*,struct buf*,int ,int ) ;

__attribute__((used)) static size_t
char_autolink_url(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 struct buf *link;
 size_t link_len, rewind;

 if (!rndr->cb.autolink || rndr->in_link_body)
  return 0;

 link = rndr_newbuf(rndr, BUFFER_SPAN);

 if ((link_len = sd_autolink__url(&rewind, link, data, offset, size, SD_AUTOLINK_SHORT_DOMAINS)) > 0) {
  ob->size -= rewind;
  rndr->cb.autolink(ob, link, MKDA_NORMAL, rndr->opaque);
 }

 rndr_popbuf(rndr, BUFFER_SPAN);
 return link_len;
}
