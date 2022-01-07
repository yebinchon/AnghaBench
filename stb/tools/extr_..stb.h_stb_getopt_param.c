
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int stb_arr_push (char**,char*) ;
 int stb_getopt_free (char**) ;
 int stb_p_strcpy_s (char*,size_t,char*) ;
 char* stb_p_strdup (char*) ;
 scalar_t__ strchr (char*,char) ;
 size_t strlen (char*) ;

char **stb_getopt_param(int *argc, char **argv, char *param)
{
   char ** opts=((void*)0);
   int i,j=1;
   for (i=1; i < *argc; ++i) {
      if (argv[i][0] != '-') {
         argv[j++] = argv[i];
      } else {
         if (argv[i][1] == 0) {
            ++i;
            while (i < *argc)
               argv[j++] = argv[i++];
            break;
         } else if (argv[i][1] == '-') {

            stb_arr_push(opts, stb_p_strdup(argv[i]));
         } else {
            int k;
            char *q = argv[i];
            for (k=1; q[k]; ++k) {
               char *s;
               if (strchr(param, q[k])) {
                  char *t = &q[k+1], z = q[k];
                  size_t len=0;
                  if (*t == 0) {
                     if (i == *argc-1) {
                        *argc = 0;
                        stb_getopt_free(opts);
                        return ((void*)0);
                     }
                     t = argv[++i];
                  } else
                     k += (int) strlen(t);
                  len = strlen(t);
                  s = (char *) malloc(len+2);
                  if (!s) return ((void*)0);
                  s[0] = z;
                  stb_p_strcpy_s(s+1, len+2, t);
               } else {

                  s = (char *) malloc(2);
                  if (!s) return ((void*)0);
                  s[0] = q[k];
                  s[1] = 0;
               }
               stb_arr_push(opts, s);
            }
         }
      }
   }
   stb_arr_push(opts, ((void*)0));
   *argc = j;
   return opts;
}
