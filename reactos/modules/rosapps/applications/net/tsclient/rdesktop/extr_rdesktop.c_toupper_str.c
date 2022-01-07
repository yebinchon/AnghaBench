
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (int) ;

void
toupper_str(char *p)
{
 while (*p)
 {
  if ((*p >= 'a') && (*p <= 'z'))
   *p = toupper((int) *p);
  p++;
 }
}
