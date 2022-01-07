
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;


 int __totitle1 ;
 scalar_t__* bsearch (scalar_t__ const,int ,int,int) ;
 int nelem (int ) ;

Rune
totitlerune(Rune c)
{
 const Rune *p;

 p = bsearch(c, __totitle1, nelem(__totitle1)/2, 2);
 if(p && c == p[0])
  return c + p[1] - 500;
 return c;
}
