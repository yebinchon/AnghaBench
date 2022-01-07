
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;


 int __alpha1 ;
 int __alpha2 ;
 scalar_t__* bsearch (scalar_t__ const,int ,int,int) ;
 scalar_t__ islowerrune (scalar_t__ const) ;
 scalar_t__ isupperrune (scalar_t__ const) ;
 int nelem (int ) ;

int
isalpharune(Rune c)
{
 const Rune *p;

 if(isupperrune(c) || islowerrune(c))
  return 1;
 p = bsearch(c, __alpha2, nelem(__alpha2)/2, 2);
 if(p && c >= p[0] && c <= p[1])
  return 1;
 p = bsearch(c, __alpha1, nelem(__alpha1), 1);
 if(p && c == p[0])
  return 1;
 return 0;
}
