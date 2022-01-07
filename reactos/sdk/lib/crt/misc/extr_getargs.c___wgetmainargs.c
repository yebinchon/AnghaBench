
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int FALSE ;
 int GetModuleFileNameW (int *,char*,int) ;
 int GetProcessHeap () ;
 int HeapValidate (int ,int ,int *) ;
 int MAX_PATH ;
 int TRUE ;
 int __argc ;
 char** __wargv ;
 char** __winitenv ;
 char* _wcmdln ;
 char* _wcsdup (char*) ;
 char* _wpgmptr ;
 int free (char*) ;
 void* malloc (int) ;
 size_t wcslen (char*) ;
 int wcsndup (char*,int) ;
 int wexpand (int ,int) ;

void __wgetmainargs(int* argc, wchar_t*** wargv, wchar_t*** wenv,
                    int expand_wildcards, int* new_mode)
{
   int i, doexpand, slashesAdded, escapedQuote, inQuotes, bufferIndex, anyLetter;
   size_t len;
   wchar_t* buffer;



   i = 0;
   doexpand = expand_wildcards;
   escapedQuote = FALSE;
   anyLetter = TRUE;
   slashesAdded = 0;
   inQuotes = 0;
   bufferIndex = 0;

   if (__wargv && __winitenv)
   {
      *wargv = __wargv;
      *wenv = __winitenv;
      *argc = __argc;
      return;
   }

   __argc = 0;

   len = wcslen(_wcmdln);
   buffer = malloc(sizeof(wchar_t) * len);


   while (TRUE)
   {

      if (i >= len || ((_wcmdln[i] == ' ' || _wcmdln[i] == '\t') && !inQuotes))
      {

         if (anyLetter)
         {
            wexpand(wcsndup(buffer, bufferIndex), doexpand);
         }

         if (i >= len)
         {
            break;
         }

         while (_wcmdln[i] == ' ' || _wcmdln[i] == '\t')
            ++i;
         anyLetter = FALSE;
         bufferIndex = 0;
         slashesAdded = 0;
         escapedQuote = FALSE;
         continue;
      }

      anyLetter = TRUE;

      if (_wcmdln[i] == '\\')
      {
         buffer[bufferIndex++] = _wcmdln[i];
         ++slashesAdded;
         ++i;
         escapedQuote = FALSE;
         continue;
      }

      if (_wcmdln[i] == '\"')
      {
         if (slashesAdded > 0)
         {
            if (slashesAdded % 2 == 0)
            {



               bufferIndex -= slashesAdded / 2;
            }
            else
            {




               bufferIndex -= slashesAdded / 2 + 1;
               buffer[bufferIndex++] = '\"';
               slashesAdded = 0;
               escapedQuote = TRUE;
               ++i;
               continue;
            }
            slashesAdded = 0;
         }
         else if (!inQuotes && i > 0 && _wcmdln[i - 1] == '\"' && !escapedQuote)
         {
            buffer[bufferIndex++] = '\"';
            ++i;
            escapedQuote = TRUE;
            continue;
         }
         slashesAdded = 0;
         escapedQuote = FALSE;
         inQuotes = !inQuotes;
         doexpand = inQuotes ? FALSE : expand_wildcards;
         ++i;
         continue;
      }

      buffer[bufferIndex++] = _wcmdln[i];
      slashesAdded = 0;
      escapedQuote = FALSE;
      ++i;
   }


   free(buffer);

   *argc = __argc;
   if (__wargv == ((void*)0))
   {
      __wargv = (wchar_t**)malloc(sizeof(wchar_t*));
      __wargv[0] = 0;
   }
   *wargv = __wargv;
   *wenv = __winitenv;

   _wpgmptr = malloc(MAX_PATH * sizeof(wchar_t));
   if (_wpgmptr)
   {
      if (!GetModuleFileNameW(((void*)0), _wpgmptr, MAX_PATH))
        _wpgmptr[0] = '\0';
      else
        _wpgmptr[MAX_PATH - 1] = '\0';
   }
   else
   {
      _wpgmptr = _wcsdup(__wargv[0]);
   }

   HeapValidate(GetProcessHeap(), 0, ((void*)0));


}
