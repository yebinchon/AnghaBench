#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int STB_EXT ; 
 int STB_EXT_NO_PERIOD ; 
 int STB_FILE ; 
 int STB_PATH ; 
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static char *FUNC6(char *buffer, char *path, int flag)
{
   int len=0,x,y, n = (int) FUNC3(path), f1,f2;
   char *s = FUNC1(path, '/', '\\');
   char *t = FUNC5(path, '.');
   if (s && t && t < s) t = NULL;
   if (s) ++s;

   if (flag == STB_EXT_NO_PERIOD)
      flag |= STB_EXT;

   if (!(flag & (STB_PATH | STB_FILE | STB_EXT))) return NULL;

   f1 = s == NULL ? 0 : s-path; // start of filename
   f2 = t == NULL ? n : t-path; // just past end of filename

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

   if (buffer == NULL) {
      buffer = (char *) FUNC0(y-x + len + 1);
      if (!buffer) return NULL;
   }

   if (len) { FUNC2(buffer, "./"); return buffer; }
   FUNC4(buffer, path+x, y-x);
   buffer[y-x] = 0;
   return buffer;
}