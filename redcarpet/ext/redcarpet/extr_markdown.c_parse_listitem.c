
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* listitem ) (struct buf*,struct buf*,int,int ) ;} ;
struct sd_markdown {int ext_flags; int opaque; TYPE_1__ cb; } ;
struct buf {size_t size; scalar_t__ data; } ;


 int BUFFER_SPAN ;
 int MKDEXT_FENCED_CODE ;
 int MKD_LIST_ORDERED ;
 int MKD_LI_BLOCK ;
 int MKD_LI_END ;
 int bufput (struct buf*,char*,size_t) ;
 int bufputc (struct buf*,char) ;
 scalar_t__ is_codefence (char*,size_t,int *) ;
 scalar_t__ is_empty (char*,size_t) ;
 int is_hrule (char*,size_t) ;
 int parse_block (struct buf*,struct sd_markdown*,scalar_t__,size_t) ;
 int parse_inline (struct buf*,struct sd_markdown*,scalar_t__,size_t) ;
 size_t prefix_oli (char*,size_t) ;
 size_t prefix_uli (char*,size_t) ;
 struct buf* rndr_newbuf (struct sd_markdown*,int ) ;
 int rndr_popbuf (struct sd_markdown*,int ) ;
 int stub1 (struct buf*,struct buf*,int,int ) ;

__attribute__((used)) static size_t
parse_listitem(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, int *flags)
{
 struct buf *work = 0, *inter = 0;
 size_t beg = 0, end, pre, sublist = 0, orgpre = 0, i;
 int in_empty = 0, has_inside_empty = 0, in_fence = 0;


 while (orgpre < 3 && orgpre < size && data[orgpre] == ' ')
  orgpre++;

 beg = prefix_uli(data, size);
 if (!beg)
  beg = prefix_oli(data, size);

 if (!beg)
  return 0;


 end = beg;
 while (end < size && data[end - 1] != '\n')
  end++;


 work = rndr_newbuf(rndr, BUFFER_SPAN);
 inter = rndr_newbuf(rndr, BUFFER_SPAN);


 bufput(work, data + beg, end - beg);
 beg = end;


 while (beg < size) {
  size_t has_next_uli = 0, has_next_oli = 0;

  end++;

  while (end < size && data[end - 1] != '\n')
   end++;


  if (is_empty(data + beg, end - beg)) {
   in_empty = 1;
   beg = end;
   continue;
  }


  i = 0;
  while (i < 4 && beg + i < end && data[beg + i] == ' ')
   i++;

  pre = i;

  if (rndr->ext_flags & MKDEXT_FENCED_CODE) {
   if (is_codefence(data + beg + i, end - beg - i, ((void*)0)) != 0)
    in_fence = !in_fence;
  }



  if (!in_fence) {
   has_next_uli = prefix_uli(data + beg + i, end - beg - i);
   has_next_oli = prefix_oli(data + beg + i, end - beg - i);
  }


  if (in_empty && (
   ((*flags & MKD_LIST_ORDERED) && has_next_uli) ||
   (!(*flags & MKD_LIST_ORDERED) && has_next_oli))){
   *flags |= MKD_LI_END;
   break;
  }


  if ((has_next_uli && !is_hrule(data + beg + i, end - beg - i)) || has_next_oli) {
   if (in_empty)
    has_inside_empty = 1;

   if (pre == orgpre)
    break;

   if (!sublist)
    sublist = work->size;
  }

  else if (in_empty && i < 4 && data[beg] != '\t') {
   *flags |= MKD_LI_END;
   break;
  }
  else if (in_empty) {
   bufputc(work, '\n');
   has_inside_empty = 1;
  }

  in_empty = 0;


  bufput(work, data + beg + i, end - beg - i);
  beg = end;
 }


 if (has_inside_empty)
  *flags |= MKD_LI_BLOCK;

 if (*flags & MKD_LI_BLOCK) {

  if (sublist && sublist < work->size) {
   parse_block(inter, rndr, work->data, sublist);
   parse_block(inter, rndr, work->data + sublist, work->size - sublist);
  }
  else
   parse_block(inter, rndr, work->data, work->size);
 } else {

  if (sublist && sublist < work->size) {
   parse_inline(inter, rndr, work->data, sublist);
   parse_block(inter, rndr, work->data + sublist, work->size - sublist);
  }
  else
   parse_inline(inter, rndr, work->data, work->size);
 }


 if (rndr->cb.listitem)
  rndr->cb.listitem(ob, inter, *flags, rndr->opaque);

 rndr_popbuf(rndr, BUFFER_SPAN);
 rndr_popbuf(rndr, BUFFER_SPAN);
 return beg;
}
