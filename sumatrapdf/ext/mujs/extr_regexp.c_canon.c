
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rune ;


 int toupperrune (int) ;

__attribute__((used)) static int canon(Rune c)
{
 Rune u = toupperrune(c);
 if (c >= 128 && u < 128)
  return c;
 return u;
}
