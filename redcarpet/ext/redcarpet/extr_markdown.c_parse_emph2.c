
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int (* strikethrough ) (struct buf*,struct buf*,int ) ;int (* highlight ) (struct buf*,struct buf*,int ) ;int (* double_emphasis ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 int _isspace (scalar_t__) ;
 size_t find_emph_char (scalar_t__*,size_t,scalar_t__) ;
 int parse_inline (struct buf*,struct sd_markdown*,scalar_t__*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;
 int stub3 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
parse_emph2(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
 size_t i = 0, len;
 struct buf *work = 0;
 int r;

 while (i < size) {
  len = find_emph_char(data + i, size - i, c);
  if (!len) return 0;
  i += len;

  if (i + 1 < size && data[i] == c && data[i + 1] == c && i && !_isspace(data[i - 1])) {
   work = rndr_newbuf(rndr, BUFFER_SPAN);
   parse_inline(work, rndr, data, i);

   if (c == '~')
    r = rndr->cb.strikethrough(ob, work, rndr->opaque);
   else if (c == '=')
    r = rndr->cb.highlight(ob, work, rndr->opaque);
   else
    r = rndr->cb.double_emphasis(ob, work, rndr->opaque);

   rndr_popbuf(rndr, BUFFER_SPAN);
   return r ? i + 2 : 0;
  }
  i++;
 }
 return 0;
}
