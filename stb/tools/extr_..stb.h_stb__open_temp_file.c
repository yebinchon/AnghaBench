
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int O_RDWR ;
 int close (int) ;
 int * fdopen (int,char const*) ;
 int memcpy (char*,char*,size_t) ;
 int mkstemp (char*) ;
 int open (int ,int ) ;
 int * stb_p_fopen (char*,char const*) ;
 int stb_p_mktemp (char*) ;
 int stb_p_strcpy_s (char*,int,char*) ;
 int strlen (char*) ;
 int unlink (char*) ;

__attribute__((used)) static FILE *stb__open_temp_file(char *temp_name, char *src_name, const char *mode)
{
   size_t p;



   FILE *f;

   p = strlen(src_name)-1;
   while (p > 0 && src_name[p] != '/' && src_name[p] != '\\'
                && src_name[p] != ':' && src_name[p] != '~')
      --p;
   ++p;

   memcpy(temp_name, src_name, p);
   {
      stb_p_strcpy_s(temp_name+p, 65536, "stmpXXXXXX");



         int fd = mkstemp(temp_name);

      if (fd == -1) return ((void*)0);
      f = fdopen(fd, mode);
      if (f == ((void*)0)) {
         unlink(temp_name);
         close(fd);
         return ((void*)0);
      }
   }

   return f;
}
