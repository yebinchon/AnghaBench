
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* codespan ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {char* member_0; size_t member_1; int member_3; int member_2; } ;


 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
char_codespan(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 size_t end, nb = 0, i, f_begin, f_end;


 while (nb < size && data[nb] == '`')
  nb++;


 i = 0;
 for (end = nb; end < size && i < nb; end++) {
  if (data[end] == '`') i++;
  else i = 0;
 }

 if (i < nb && end >= size)
  return 0;


 f_begin = nb;
 while (f_begin < end && data[f_begin] == ' ')
  f_begin++;

 f_end = end - nb;
 while (f_end > nb && data[f_end-1] == ' ')
  f_end--;


 if (f_begin < f_end) {
  struct buf work = { data + f_begin, f_end - f_begin, 0, 0 };
  if (!rndr->cb.codespan(ob, &work, rndr->opaque))
   end = 0;
 } else {
  if (!rndr->cb.codespan(ob, 0, rndr->opaque))
   end = 0;
 }

 return end;
}
