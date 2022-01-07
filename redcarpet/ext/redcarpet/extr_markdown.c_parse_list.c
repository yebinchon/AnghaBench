
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* list ) (struct buf*,struct buf*,int,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_BLOCK ;
 int MKD_LI_END ;
 size_t parse_listitem (struct buf*,struct sd_markdown*,int *,size_t,int*) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int,int ) ;

__attribute__((used)) static size_t
parse_list(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, int flags)
{
 struct buf *work = 0;
 size_t i = 0, j;

 work = rndr_newbuf(rndr, BUFFER_BLOCK);

 while (i < size) {
  j = parse_listitem(work, rndr, data + i, size - i, &flags);
  i += j;

  if (!j || (flags & MKD_LI_END))
   break;
 }

 if (rndr->cb.list)
  rndr->cb.list(ob, work, flags, rndr->opaque);
 rndr_popbuf(rndr, BUFFER_BLOCK);
 return i;
}
