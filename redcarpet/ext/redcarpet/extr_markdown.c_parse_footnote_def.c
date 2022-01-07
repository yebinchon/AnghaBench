
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* footnote_def ) (struct buf*,struct buf*,unsigned int,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 int parse_block (struct buf*,struct sd_markdown*,int *,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,unsigned int,int ) ;

__attribute__((used)) static void
parse_footnote_def(struct buf *ob, struct sd_markdown *rndr, unsigned int num, uint8_t *data, size_t size)
{
 struct buf *work = 0;
 work = rndr_newbuf(rndr, BUFFER_SPAN);

 parse_block(work, rndr, data, size);

 if (rndr->cb.footnote_def)
 rndr->cb.footnote_def(ob, work, num, rndr->opaque);
 rndr_popbuf(rndr, BUFFER_SPAN);
}
