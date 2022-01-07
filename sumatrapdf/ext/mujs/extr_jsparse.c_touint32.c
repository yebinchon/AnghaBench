
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ toint32 (double) ;

__attribute__((used)) static unsigned int touint32(double d)
{
 return (unsigned int)toint32(d);
}
