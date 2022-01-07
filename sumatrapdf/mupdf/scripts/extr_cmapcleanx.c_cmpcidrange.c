
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cidrange {unsigned int lo; } ;



__attribute__((used)) static int cmpcidrange(const void *va, const void *vb)
{
 unsigned int a = ((const struct cidrange *)va)->lo;
 unsigned int b = ((const struct cidrange *)vb)->lo;
 return a < b ? -1 : a > b ? 1 : 0;
}
