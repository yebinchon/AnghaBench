
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* header ) (struct buf*,struct buf*,int,int ) ;int (* paragraph ) (struct buf*,struct buf*,int ) ;scalar_t__ blockhtml; } ;
struct sd_markdown {int ext_flags; int opaque; TYPE_1__ cb; } ;
struct buf {char* member_0; size_t size; size_t data; int member_3; int member_2; int member_1; } ;


 int BUFFER_BLOCK ;
 int BUFFER_SPAN ;
 int MKDEXT_FENCED_CODE ;
 int MKDEXT_LAX_SPACING ;
 scalar_t__ is_atxheader (struct sd_markdown*,char*,size_t) ;
 scalar_t__ is_codefence (char*,size_t,int *) ;
 scalar_t__ is_empty (char*,size_t) ;
 int is_headerline (char*,size_t) ;
 scalar_t__ is_hrule (char*,size_t) ;
 int isalpha (char) ;
 scalar_t__ parse_htmlblock (struct buf*,struct sd_markdown*,char*,size_t,int ) ;
 int parse_inline (struct buf*,struct sd_markdown*,size_t,int) ;
 scalar_t__ prefix_oli (char*,size_t) ;
 scalar_t__ prefix_quote (char*,size_t) ;
 scalar_t__ prefix_uli (char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;
 int stub3 (struct buf*,struct buf*,int,int ) ;

__attribute__((used)) static size_t
parse_paragraph(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
 size_t i = 0, end = 0;
 int level = 0, last_is_empty = 1;
 struct buf work = { data, 0, 0, 0 };

 while (i < size) {
  for (end = i + 1; end < size && data[end - 1] != '\n'; end++) ;

  if (is_empty(data + i, size - i))
   break;

  if (!last_is_empty && (level = is_headerline(data + i, size - i)) != 0)
   break;

  last_is_empty = 0;

  if (is_atxheader(rndr, data + i, size - i) ||
   is_hrule(data + i, size - i) ||
   prefix_quote(data + i, size - i)) {
   end = i;
   break;
  }
  if ((rndr->ext_flags & MKDEXT_LAX_SPACING) && !isalpha(data[i])) {
   if (prefix_oli(data + i, size - i) ||
    prefix_uli(data + i, size - i)) {
    end = i;
    break;
   }


   if (data[i] == '<' && rndr->cb.blockhtml &&
    parse_htmlblock(ob, rndr, data + i, size - i, 0)) {
    end = i;
    break;
   }


   if ((rndr->ext_flags & MKDEXT_FENCED_CODE) != 0 &&
    is_codefence(data + i, size - i, ((void*)0)) != 0) {
    end = i;
    break;
   }
  }

  i = end;
 }

 work.size = i;
 while (work.size && data[work.size - 1] == '\n')
  work.size--;

 if (!level) {
  struct buf *tmp = rndr_newbuf(rndr, BUFFER_BLOCK);
  parse_inline(tmp, rndr, work.data, work.size);
  if (rndr->cb.paragraph)
   rndr->cb.paragraph(ob, tmp, rndr->opaque);
  rndr_popbuf(rndr, BUFFER_BLOCK);
 } else {
  struct buf *header_work;

  if (work.size) {
   size_t beg;
   i = work.size;
   work.size -= 1;

   while (work.size && data[work.size] != '\n')
    work.size -= 1;

   beg = work.size + 1;
   while (work.size && data[work.size - 1] == '\n')
    work.size -= 1;

   if (work.size > 0) {
    struct buf *tmp = rndr_newbuf(rndr, BUFFER_BLOCK);
    parse_inline(tmp, rndr, work.data, work.size);

    if (rndr->cb.paragraph)
     rndr->cb.paragraph(ob, tmp, rndr->opaque);

    rndr_popbuf(rndr, BUFFER_BLOCK);
    work.data += beg;
    work.size = i - beg;
   }
   else work.size = i;
  }

  header_work = rndr_newbuf(rndr, BUFFER_SPAN);
  parse_inline(header_work, rndr, work.data, work.size);

  if (rndr->cb.header)
   rndr->cb.header(ob, header_work, (int)level, rndr->opaque);

  rndr_popbuf(rndr, BUFFER_SPAN);
 }

 return end;
}
