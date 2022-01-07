
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct sd_markdown {int dummy; } ;


 size_t htmlblock_end_tag (char const*,size_t,struct sd_markdown*,char*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t
htmlblock_end(const char *curtag,
 struct sd_markdown *rndr,
 uint8_t *data,
 size_t size,
 int start_of_line)
{
 size_t tag_size = strlen(curtag);
 size_t i = 1, end_tag;
 int block_lines = 0;

 while (i < size) {
  i++;
  while (i < size && !(data[i - 1] == '<' && data[i] == '/')) {
   if (data[i] == '\n')
    block_lines++;

   i++;
  }
  if (start_of_line && block_lines > 0 && data[i - 2] != '\n')
   continue;

  if (i + 2 + tag_size >= size)
   break;

  end_tag = htmlblock_end_tag(curtag, tag_size, rndr, data + i - 1, size - i + 1);
  if (end_tag)
   return i + end_tag - 1;
 }

 return 0;
}
