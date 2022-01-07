
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int various; int close; } ;
typedef TYPE_1__ stbfile ;
typedef int FILE ;


 int stb__fclose2 ;
 int * stb_fopen (char*,char*) ;
 int stb_keep_if_different ;
 int stb_keep_yes ;
 TYPE_1__* stb_openf (int *) ;

stbfile *stb_open(char *filename, char *mode)
{
   FILE *f = stb_fopen(filename, mode[0] == 'k' ? mode+1 : mode);
   stbfile *s;
   if (f == ((void*)0)) return ((void*)0);
   s = stb_openf(f);
   if (s) {
      s->close = stb__fclose2;
      s->various = mode[0] == 'k' ? stb_keep_if_different : stb_keep_yes;
   }
   return s;
}
