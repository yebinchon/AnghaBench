
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;


 int __space2 ;
 scalar_t__* bsearch (scalar_t__ const,int ,int,int) ;
 int nelem (int ) ;

int
isspacerune(Rune c)
{
 const Rune *p;

 p = bsearch(c, __space2, nelem(__space2)/2, 2);
 if(p && c >= p[0] && c <= p[1])
  return 1;
 return 0;
}
