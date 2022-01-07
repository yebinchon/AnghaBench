
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* quote ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {char* member_0; size_t member_1; int member_3; int member_2; } ;


 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
char_quote(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 size_t end, nq = 0, i, f_begin, f_end;


 while (nq < size && data[nq] == '"')
  nq++;


 i = 0;
 for (end = nq; end < size && i < nq; end++) {
  if (data[end] == '"') i++;
  else i = 0;
 }

 if (i < nq && end >= size)
  return 0;


 f_begin = nq;
 while (f_begin < end && data[f_begin] == ' ')
  f_begin++;

 f_end = end - nq;
 while (f_end > nq && data[f_end-1] == ' ')
  f_end--;


 if (f_begin < f_end) {
  struct buf work = { data + f_begin, f_end - f_begin, 0, 0 };
  if (!rndr->cb.quote(ob, &work, rndr->opaque))
   end = 0;
 } else {
  if (!rndr->cb.quote(ob, 0, rndr->opaque))
   end = 0;
 }

 return end;
}
