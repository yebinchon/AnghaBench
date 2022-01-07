
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;



__attribute__((used)) static const WCHAR *string_binding_find_delimiterW(
    const WCHAR *string_binding, WCHAR delim)
{
  const WCHAR *next;
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
