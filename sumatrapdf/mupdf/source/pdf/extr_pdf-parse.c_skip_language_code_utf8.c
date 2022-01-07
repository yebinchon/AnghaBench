
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
skip_language_code_utf8(const unsigned char *s, size_t n, size_t i)
{

 if (i + 3 <= n && s[i] == 27 && s[i+3])
  return 3;
 else if (i + 5 <= n && s[i] == 27 && s[i+5] == 27)
  return 5;
 return 0;
}
