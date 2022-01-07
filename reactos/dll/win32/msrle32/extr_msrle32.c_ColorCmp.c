
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;



__attribute__((used)) static inline WORD ColorCmp(WORD clr1, WORD clr2)
{
  UINT a = clr1 - clr2;
  return a * a;
}
