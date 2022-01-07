
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* header ) (struct buf*,struct buf*,int,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {int dummy; } ;


 int BUFFER_SPAN ;
 int parse_inline (struct buf*,struct sd_markdown*,char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int,int ) ;

__attribute__((used)) static size_t
parse_atxheader(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size)
{
 size_t level = 0;
 size_t i, end, skip;

 while (level < size && level < 6 && data[level] == '#')
  level++;

 for (i = level; i < size && data[i] == ' '; i++);

 for (end = i; end < size && data[end] != '\n'; end++);
 skip = end;

 while (end && data[end - 1] == '#')
  end--;

 while (end && data[end - 1] == ' ')
  end--;

 if (end > i) {
  struct buf *work = rndr_newbuf(rndr, BUFFER_SPAN);

  parse_inline(work, rndr, data + i, end - i);

  if (rndr->cb.header)
   rndr->cb.header(ob, work, (int)level, rndr->opaque);

  rndr_popbuf(rndr, BUFFER_SPAN);
 }

 return skip;
}
