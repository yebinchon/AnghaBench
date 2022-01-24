#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ TRUE ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,uintptr_t) ; 
 char* FUNC8 (char*,char*) ; 

int FUNC9(char* name, int expand_wildcards)
{
   char* s;
   WIN32_FIND_DATAA fd;
   HANDLE hFile;
   BOOLEAN first = TRUE;
   char buffer[MAX_PATH];
   uintptr_t pos;

   if (expand_wildcards && (s = FUNC8(name, "*?")))
   {
      hFile = FUNC1(name, &fd);
      if (hFile != INVALID_HANDLE_VALUE)
      {
         while(s != name && *s != '/' && *s != '\\')
            s--;
         pos = s - name;
         if (*s == '/' || *s == '\\')
            pos++;
         FUNC7(buffer, name, pos);
         do
         {
            if (!(fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
            {
               FUNC6(&buffer[pos], fd.cFileName);
               if (FUNC4(FUNC3(buffer)) < 0)
               {
                  FUNC0(hFile);
                  return -1;
               }
               first = FALSE;
            }
         }
         while(FUNC2(hFile, &fd));
         FUNC0(hFile);
      }
   }
   if (first)
   {
      if (FUNC4(name) < 0)
         return -1;
   }
   else
      FUNC5(name);
   return 0;
}