
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int buffer ;


 int STB_EXT ;
 int STB_EXT_NO_PERIOD ;
 int STB_FILE ;
 int STB_PATH ;
 scalar_t__ malloc (int) ;
 int stb_p_strcpy_s (char*,int,char*) ;
 int stb_p_strncpy_s (char*,int,char*,int) ;
 char* stb_strrchr2 (char*,char,char) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *stb__splitpath_raw(char *buffer, char *path, int flag)
{
   ptrdiff_t len=0,x,y, n = (int) strlen(path), f1,f2;
   char *s = stb_strrchr2(path, '/', '\\');
   char *t = strrchr(path, '.');
   if (s && t && t < s) t = ((void*)0);
   if (s) ++s;

   if (flag == STB_EXT_NO_PERIOD)
      flag |= STB_EXT;

   if (!(flag & (STB_PATH | STB_FILE | STB_EXT))) return ((void*)0);

   f1 = s == ((void*)0) ? 0 : s-path;
   f2 = t == ((void*)0) ? n : t-path;

   if (flag & STB_PATH) {
      x = 0; if (f1 == 0 && flag == STB_PATH) len=2;
   } else if (flag & STB_FILE) {
      x = f1;
   } else {
      x = f2;
      if (flag & STB_EXT_NO_PERIOD)
         if (buffer[x] == '.')
            ++x;
   }

   if (flag & STB_EXT)
      y = n;
   else if (flag & STB_FILE)
      y = f2;
   else
      y = f1;

   if (buffer == ((void*)0)) {
      buffer = (char *) malloc(y-x + len + 1);
      if (!buffer) return ((void*)0);
   }

   if (len) { stb_p_strcpy_s(buffer, sizeof(buffer), "./"); return buffer; }
   stb_p_strncpy_s(buffer, sizeof(buffer),path+x, y-x);
   buffer[y-x] = 0;
   return buffer;
}
