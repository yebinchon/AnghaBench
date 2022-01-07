
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* underline ) (struct buf*,struct buf*,int ) ;int (* emphasis ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int ext_flags; int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 int MKDEXT_NO_INTRA_EMPHASIS ;
 int MKDEXT_UNDERLINE ;
 scalar_t__ _isalnum (char) ;
 int _isspace (char) ;
 size_t find_emph_char (char*,size_t,char) ;
 int parse_inline (struct buf*,struct sd_markdown*,char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
parse_emph1(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, uint8_t c)
{
 size_t i = 0, len;
 struct buf *work = 0;
 int r;


 if (size > 1 && data[0] == c && data[1] == c) i = 1;

 while (i < size) {
  len = find_emph_char(data + i, size - i, c);
  if (!len) return 0;
  i += len;
  if (i >= size) return 0;

  if (data[i] == c && !_isspace(data[i - 1])) {

   if (rndr->ext_flags & MKDEXT_NO_INTRA_EMPHASIS) {
    if (i + 1 < size && _isalnum(data[i + 1]))
     continue;
   }

   work = rndr_newbuf(rndr, BUFFER_SPAN);
   parse_inline(work, rndr, data, i);

   if (rndr->ext_flags & MKDEXT_UNDERLINE && c == '_')
    r = rndr->cb.underline(ob, work, rndr->opaque);
   else
    r = rndr->cb.emphasis(ob, work, rndr->opaque);

   rndr_popbuf(rndr, BUFFER_SPAN);
   return r ? i + 1 : 0;
  }
 }

 return 0;
}
