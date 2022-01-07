
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* superscript ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 int _isspace (char) ;
 int parse_inline (struct buf*,struct sd_markdown*,char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
char_superscript(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t offset, size_t size)
{
 size_t sup_start, sup_len;
 struct buf *sup;

 if (!rndr->cb.superscript)
  return 0;

 if (size < 2)
  return 0;

 if (data[1] == '(') {
  sup_start = sup_len = 2;

  while (sup_len < size && data[sup_len] != ')' && data[sup_len - 1] != '\\')
   sup_len++;

  if (sup_len == size)
   return 0;
 } else {
  sup_start = sup_len = 1;

  while (sup_len < size && !_isspace(data[sup_len]))
   sup_len++;
 }

 if (sup_len - sup_start == 0)
  return (sup_start == 2) ? 3 : 0;

 sup = rndr_newbuf(rndr, BUFFER_SPAN);
 parse_inline(sup, rndr, data + sup_start, sup_len - sup_start);
 rndr->cb.superscript(ob, sup, rndr->opaque);
 rndr_popbuf(rndr, BUFFER_SPAN);

 return (sup_start == 2) ? sup_len + 1 : sup_len;
}
