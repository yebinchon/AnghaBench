
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
string_expanded_length(const char *src, size_t srclen, size_t tabsize, size_t max_size)
{
 size_t size, pos;

 for (size = pos = 0; pos < srclen && size < max_size; pos++) {
  if (src[pos] == '\t') {
   size_t expanded = tabsize - (size % tabsize);

   size += expanded;
  } else {
   size++;
  }
 }

 return pos;
}
