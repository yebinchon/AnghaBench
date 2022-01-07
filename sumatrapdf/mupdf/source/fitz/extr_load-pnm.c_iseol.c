
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iseol(int a)
{
 switch (a) {
 case '\r': case '\n':
  return 1;
 }
 return 0;
}
