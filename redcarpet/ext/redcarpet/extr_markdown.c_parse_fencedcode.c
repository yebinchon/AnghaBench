
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* blockcode ) (struct buf*,struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {scalar_t__ size; char* data; int member_3; int member_2; int member_1; int member_0; } ;


 int BUFFER_BLOCK ;
 int bufput (struct buf*,char*,size_t) ;
 int bufputc (struct buf*,char) ;
 size_t is_codefence (char*,size_t,struct buf*) ;
 scalar_t__ is_empty (char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
parse_fencedcode(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
 size_t beg, end;
 struct buf *work = 0;
 struct buf lang = { 0, 0, 0, 0 };

 beg = is_codefence(data, size, &lang);
 if (beg == 0) return 0;

 work = rndr_newbuf(rndr, BUFFER_BLOCK);

 while (beg < size) {
  size_t fence_end;
  struct buf fence_trail = { 0, 0, 0, 0 };

  fence_end = is_codefence(data + beg, size - beg, &fence_trail);
  if (fence_end != 0 && fence_trail.size == 0) {
   beg += fence_end;
   break;
  }

  for (end = beg + 1; end < size && data[end - 1] != '\n'; end++);

  if (beg < end) {


   if (is_empty(data + beg, end - beg))
    bufputc(work, '\n');
   else bufput(work, data + beg, end - beg);
  }
  beg = end;
 }

 if (work->size && work->data[work->size - 1] != '\n')
  bufputc(work, '\n');

 if (rndr->cb.blockcode)
  rndr->cb.blockcode(ob, work, lang.size ? &lang : ((void*)0), rndr->opaque);

 rndr_popbuf(rndr, BUFFER_BLOCK);
 return beg;
}
