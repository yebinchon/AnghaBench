
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int
leapyear(int year)
{
 int rv = 0;

 if ((year & 3) == 0) {
  rv = 1;
  if ((year % 100) == 0) {
   rv = 0;
   if ((year % 400) == 0)
    rv = 1;
  }
 }
 return (rv);
}
