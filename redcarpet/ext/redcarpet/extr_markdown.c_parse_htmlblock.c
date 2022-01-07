
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_2__ {int (* blockhtml ) (struct buf*,struct buf*,int ) ;} ;
struct sd_markdown {int opaque; TYPE_1__ cb; } ;
struct buf {char* member_0; size_t size; int member_3; int member_2; int member_1; } ;


 char* find_block_tag (char*,int) ;
 size_t htmlblock_end (char const*,struct sd_markdown*,char*,size_t,int) ;
 size_t is_empty (char*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (struct buf*,struct buf*,int ) ;
 int stub2 (struct buf*,struct buf*,int ) ;
 int stub3 (struct buf*,struct buf*,int ) ;

__attribute__((used)) static size_t
parse_htmlblock(struct buf *ob, struct sd_markdown *rndr, uint8_t *data, size_t size, int do_render)
{
 size_t i, j = 0, tag_end;
 const char *curtag = ((void*)0);
 struct buf work = { data, 0, 0, 0 };


 if (size < 2 || data[0] != '<')
  return 0;

 i = 1;
 while (i < size && data[i] != '>' && data[i] != ' ')
  i++;

 if (i < size)
  curtag = find_block_tag((char *)data + 1, (int)i - 1);


 if (!curtag) {


  if (size > 5 && data[1] == '!' && data[2] == '-' && data[3] == '-') {
   i = 5;

   while (i < size && !(data[i - 2] == '-' && data[i - 1] == '-' && data[i] == '>'))
    i++;

   i++;

   if (i < size)
    j = is_empty(data + i, size - i);

   if (j) {
    work.size = i + j;
    if (do_render && rndr->cb.blockhtml)
     rndr->cb.blockhtml(ob, &work, rndr->opaque);
    return work.size;
   }
  }


  if (size > 4 && (data[1] == 'h' || data[1] == 'H') && (data[2] == 'r' || data[2] == 'R')) {
   i = 3;
   while (i < size && data[i] != '>')
    i++;

   if (i + 1 < size) {
    i++;
    j = is_empty(data + i, size - i);
    if (j) {
     work.size = i + j;
     if (do_render && rndr->cb.blockhtml)
      rndr->cb.blockhtml(ob, &work, rndr->opaque);
     return work.size;
    }
   }
  }


  return 0;
 }



 tag_end = htmlblock_end(curtag, rndr, data, size, 1);



 if (!tag_end && strcmp(curtag, "ins") != 0 && strcmp(curtag, "del") != 0) {
  tag_end = htmlblock_end(curtag, rndr, data, size, 0);
 }

 if (!tag_end)
  return 0;


 work.size = tag_end;
 if (do_render && rndr->cb.blockhtml)
  rndr->cb.blockhtml(ob, &work, rndr->opaque);

 return tag_end;
}
