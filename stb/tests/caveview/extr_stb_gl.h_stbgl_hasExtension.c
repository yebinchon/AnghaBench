
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_EXTENSIONS ;
 char* glGetString (int ) ;

int stbgl_hasExtension(char *ext)
{
   const char *s = glGetString(GL_EXTENSIONS);
   for(;;) {
      char *e = ext;
      for (;;) {
         if (*e == 0) {
            if (*s == 0 || *s == ' ') return 1;
            break;
         }
         if (*s != *e)
            break;
         ++s, ++e;
      }
      while (*s && *s != ' ') ++s;
      if (!*s) return 0;
      ++s;
   }
}
