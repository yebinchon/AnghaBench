
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;


 int __tolower1 ;
 int __tolower2 ;
 scalar_t__* bsearch (scalar_t__ const,int ,int,int) ;
 int nelem (int ) ;

int
isupperrune(Rune c)
{
 const Rune *p;

 p = bsearch(c, __tolower2, nelem(__tolower2)/3, 3);
 if(p && c >= p[0] && c <= p[1])
  return 1;
 p = bsearch(c, __tolower1, nelem(__tolower1)/2, 2);
 if(p && c == p[0])
  return 1;
 return 0;
}
