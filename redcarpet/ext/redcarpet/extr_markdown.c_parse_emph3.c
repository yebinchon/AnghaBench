
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int (* triple_emphasis ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 scalar_t__ _isspace (scalar_t__) ;
 size_t find_emph_char (scalar_t__*,size_t,scalar_t__) ;
 size_t parse_emph1 (struct buf*,struct sd_markdown*,scalar_t__*,size_t,scalar_t__) ;
 size_t parse_emph2 (struct buf*,struct sd_markdown*,scalar_t__*,size_t,scalar_t__) ;
 int parse_inline (struct buf*,struct sd_markdown*,scalar_t__*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
parse_emph3(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
 size_t i = 0, len;
 int r;

 while (i < size) {
  len = find_emph_char(data + i, size - i, c);
  if (!len) return 0;
  i += len;


  if (data[i] != c || _isspace(data[i - 1]))
   continue;

  if (i + 2 < size && data[i + 1] == c && data[i + 2] == c && rndr->cb.triple_emphasis) {

   struct buf *work = rndr_newbuf(rndr, BUFFER_SPAN);

   parse_inline(work, rndr, data, i);
   r = rndr->cb.triple_emphasis(ob, work, rndr->opaque);
   rndr_popbuf(rndr, BUFFER_SPAN);
   return r ? i + 3 : 0;

  } else if (i + 1 < size && data[i + 1] == c) {

   len = parse_emph1(ob, rndr, data - 2, size + 2, c);
   if (!len) return 0;
   else return len - 2;

  } else {

   len = parse_emph2(ob, rndr, data - 1, size + 1, c);
   if (!len) return 0;
   else return len - 1;
  }
 }
 return 0;
}
