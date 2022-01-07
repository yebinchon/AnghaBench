
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stbsp_sprintf (char*,char*) ;

int quicktest(void)
{
   char buffer[999];
   stbsp_sprintf(buffer, "test%%test");
   return 0;
}
