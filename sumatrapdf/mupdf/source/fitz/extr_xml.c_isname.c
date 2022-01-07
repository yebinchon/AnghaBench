
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int isname(int c)
{
 return c == '.' || c == '-' || c == '_' || c == ':' ||
  (c >= '0' && c <= '9') ||
  (c >= 'A' && c <= 'Z') ||
  (c >= 'a' && c <= 'z');
}
