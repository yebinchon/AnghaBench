
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE ;
 int __argc ;
 char** __argv ;
 char** malloc (int) ;
 char** realloc (char**,int) ;

int aadd(char* name)
{
   char** _new;
   if ((__argc % SIZE) == 0)
   {
      if (__argv == ((void*)0))
         _new = malloc(sizeof(char*) * (1 + SIZE));
      else
         _new = realloc(__argv, sizeof(char*) * (__argc + 1 + SIZE));
      if (_new == ((void*)0))
         return -1;
      __argv = _new;
   }
   __argv[__argc++] = name;
   __argv[__argc] = ((void*)0);
   return 0;
}
