
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* blockcode ) (struct buf*,struct buf*,int *,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int size; char* data; } ;


 int BUFFER_BLOCK ;
 int bufput (struct buf*,char*,size_t) ;
 int bufputc (struct buf*,char) ;
 scalar_t__ is_empty (char*,size_t) ;
 size_t prefix_code (char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int *,int ) ;

__attribute__((used)) static size_t
parse_blockcode(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
 size_t beg, end, pre;
 struct buf *work = 0;

 work = rndr_newbuf(rndr, BUFFER_BLOCK);

 beg = 0;
 while (beg < size) {
  for (end = beg + 1; end < size && data[end - 1] != '\n'; end++) {};
  pre = prefix_code(data + beg, end - beg);

  if (pre)
   beg += pre;
  else if (!is_empty(data + beg, end - beg))

   break;

  if (beg < end) {


   if (is_empty(data + beg, end - beg))
    bufputc(work, '\n');
   else bufput(work, data + beg, end - beg);
  }
  beg = end;
 }

 while (work->size && work->data[work->size - 1] == '\n')
  work->size -= 1;

 bufputc(work, '\n');

 if (rndr->cb.blockcode)
  rndr->cb.blockcode(ob, work, ((void*)0), rndr->opaque);

 rndr_popbuf(rndr, BUFFER_BLOCK);
 return beg;
}
