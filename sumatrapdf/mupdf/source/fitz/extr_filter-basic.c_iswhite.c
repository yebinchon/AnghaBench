
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iswhite(int a)
{
 switch (a) {
 case '\n': case '\r': case '\t': case ' ':
 case '\0': case '\f': case '\b': case 0177:
  return 1;
 }
 return 0;
}
