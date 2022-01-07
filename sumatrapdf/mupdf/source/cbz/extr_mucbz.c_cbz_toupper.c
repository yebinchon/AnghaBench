
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cbz_toupper(int c)
{
 if (c >= 'a' && c <= 'z')
  return c - 'a' + 'A';
 return c;
}
