
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb_malloc_string (void*,size_t) ;
 int stb_p_strcpy_s (char*,size_t,char*) ;
 size_t strlen (char*) ;

char *stb_strdup(char *str, void *pool)
{
   size_t len = strlen(str);
   char *p = stb_malloc_string(pool, len+1);
   stb_p_strcpy_s(p, len+1, str);
   return p;
}
