
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAA ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (char*,TYPE_1__*) ;
 scalar_t__ FindNextFileA (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ TRUE ;
 char* _strdup (char*) ;
 scalar_t__ aadd (char*) ;
 int free (char*) ;
 int strcpy (char*,int ) ;
 int strncpy (char*,char*,uintptr_t) ;
 char* strpbrk (char*,char*) ;

int aexpand(char* name, int expand_wildcards)
{
   char* s;
   WIN32_FIND_DATAA fd;
   HANDLE hFile;
   BOOLEAN first = TRUE;
   char buffer[MAX_PATH];
   uintptr_t pos;

   if (expand_wildcards && (s = strpbrk(name, "*?")))
   {
      hFile = FindFirstFileA(name, &fd);
      if (hFile != INVALID_HANDLE_VALUE)
      {
         while(s != name && *s != '/' && *s != '\\')
            s--;
         pos = s - name;
         if (*s == '/' || *s == '\\')
            pos++;
         strncpy(buffer, name, pos);
         do
         {
            if (!(fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
            {
               strcpy(&buffer[pos], fd.cFileName);
               if (aadd(_strdup(buffer)) < 0)
               {
                  FindClose(hFile);
                  return -1;
               }
               first = FALSE;
            }
         }
         while(FindNextFileA(hFile, &fd));
         FindClose(hFile);
      }
   }
   if (first)
   {
      if (aadd(name) < 0)
         return -1;
   }
   else
      free(name);
   return 0;
}
