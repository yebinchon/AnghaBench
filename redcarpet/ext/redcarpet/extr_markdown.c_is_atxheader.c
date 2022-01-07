
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct sd_markdown {int ext_flags; } ;


 int MKDEXT_SPACE_HEADERS ;

__attribute__((used)) static int
is_atxheader(struct sd_markdown *rndr, uint8_t *data, size_t size)
{
 if (data[0] != '#')
  return 0;

 if (rndr->ext_flags & MKDEXT_SPACE_HEADERS) {
  size_t level = 0;

  while (level < size && level < 6 && data[level] == '#')
   level++;

  if (level < size && data[level] != ' ')
   return 0;
 }

 return 1;
}
