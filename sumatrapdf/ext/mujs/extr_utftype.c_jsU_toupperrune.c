
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const Rune ;


 int __toupper1 ;
 int __toupper2 ;
 scalar_t__* bsearch (scalar_t__ const,int ,int,int) ;
 int nelem (int ) ;

Rune
toupperrune(Rune c)
{
 const Rune *p;

 p = bsearch(c, __toupper2, nelem(__toupper2)/3, 3);
 if(p && c >= p[0] && c <= p[1])
  return c + p[2] - 500;
 p = bsearch(c, __toupper1, nelem(__toupper1)/2, 2);
 if(p && c == p[0])
  return c + p[1] - 500;
 return c;
}
