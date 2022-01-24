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
typedef  int wchar_t ;
struct TYPE_4__ {int dwFileAttributes; int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ TRUE ; 
 int* FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,uintptr_t) ; 
 int* FUNC8 (int*,char*) ; 

int FUNC9(wchar_t* name, int expand_wildcards)
{
   wchar_t* s;
   WIN32_FIND_DATAW fd;
   HANDLE hFile;
   BOOLEAN first = TRUE;
   wchar_t buffer[MAX_PATH];
   uintptr_t pos;

   if (expand_wildcards && (s = FUNC8(name, L"*?")))
   {
      hFile = FUNC1(name, &fd);
      if (hFile != INVALID_HANDLE_VALUE)
      {
         while(s != name && *s != L'/' && *s != L'\\')
            s--;
         pos = s - name;
         if (*s == L'/' || *s == L'\\')
            pos++;
         FUNC7(buffer, name, pos);
         do
         {
            if (!(fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
            {
               FUNC6(&buffer[pos], fd.cFileName);
               if (FUNC5(FUNC3(buffer)) < 0)
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
      if (FUNC5(name) < 0)
         return -1;
   }
   else
      FUNC4(name);
   return 0;
}