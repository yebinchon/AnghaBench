
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const unsigned char *string_binding_find_delimiter(
    const unsigned char *string_binding, unsigned char delim)
{
  const unsigned char *next;
  for (next = string_binding; *next; next++) {
    if (*next == '\\') {
      next++;
      continue;
    }
    if (*next == delim)
      return next;
  }
  return ((void*)0);
}
