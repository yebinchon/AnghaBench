
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int stb_arr_free (char**) ;
 int stb_arr_len (char**) ;

void stb_getopt_free(char **opts)
{
   int i;
   char ** o2 = opts;
   for (i=0; i < stb_arr_len(o2); ++i)
      free(o2[i]);
   stb_arr_free(o2);
}
