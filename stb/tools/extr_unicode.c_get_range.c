
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lo; void* hi; } ;
typedef TYPE_1__ char_range ;


 char* stb_skipwhite (char*) ;
 void* strtol (char*,char**,int) ;

char_range get_range(char *str)
{
   char_range cr;
   char *p;
   cr.lo = strtol(str, &p, 16);
   p = stb_skipwhite(p);
   if (*p == '.')
      cr.hi = strtol(p+2, ((void*)0), 16);
   else
      cr.hi = cr.lo;
   return cr;
}
