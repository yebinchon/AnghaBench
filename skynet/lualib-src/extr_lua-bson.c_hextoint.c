
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
hextoint(char c) {
 if (c>='0' && c<='9')
  return c-'0';
 if (c>='a' && c<='z')
  return c-'a'+10;
 if (c>='A' && c<='Z')
  return c-'A'+10;
 return 0;
}
