
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int GetModuleFileNameA (int *,char*,int) ;
 int GetProcessHeap () ;
 int HeapValidate (int ,int ,int *) ;
 int MAX_PATH ;
 int TRUE ;
 int __argc ;
 char** __argv ;
 char* _acmdln ;
 char** _environ ;
 char* _pgmptr ;
 char* _strdup (char*) ;
 int aexpand (int ,int) ;
 int free (char*) ;
 void* malloc (int) ;
 size_t strlen (char*) ;
 int strndup (char*,int) ;

void __getmainargs(int* argc, char*** argv, char*** env, int expand_wildcards, int* new_mode)
{
   int i, doexpand, slashesAdded, escapedQuote, inQuotes, bufferIndex, anyLetter;
   size_t len;
   char* buffer;



   i = 0;
   doexpand = expand_wildcards;
   escapedQuote = FALSE;
   anyLetter = FALSE;
   slashesAdded = 0;
   inQuotes = 0;
   bufferIndex = 0;

   if (__argv && _environ)
   {
      *argv = __argv;
      *env = _environ;
      *argc = __argc;
      return;
   }

   __argc = 0;

   len = strlen(_acmdln);
   buffer = malloc(sizeof(char) * len);


   while (TRUE)
   {

      if (i >= len || ((_acmdln[i] == ' ' || _acmdln[i] == '\t') && !inQuotes))
      {

         if (anyLetter)
         {
            aexpand(strndup(buffer, bufferIndex), doexpand);
         }

         if (i >= len)
         {
            break;
         }

         while (_acmdln[i] == ' ' || _acmdln[i] == '\t')
            ++i;
         anyLetter = FALSE;
         bufferIndex = 0;
         slashesAdded = 0;
         escapedQuote = FALSE;
         continue;
      }

      anyLetter = TRUE;

      if (_acmdln[i] == '\\')
      {
         buffer[bufferIndex++] = _acmdln[i];
         ++slashesAdded;
         ++i;
         escapedQuote = FALSE;
         continue;
      }

      if (_acmdln[i] == '\"')
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
         else if (!inQuotes && i > 0 && _acmdln[i - 1] == '\"' && !escapedQuote)
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

      buffer[bufferIndex++] = _acmdln[i];
      slashesAdded = 0;
      escapedQuote = FALSE;
      ++i;
   }


   free(buffer);

   *argc = __argc;
   if (__argv == ((void*)0))
   {
      __argv = (char**)malloc(sizeof(char*));
      __argv[0] = 0;
   }
   *argv = __argv;
   *env = _environ;

   _pgmptr = malloc(MAX_PATH * sizeof(char));
   if (_pgmptr)
   {
      if (!GetModuleFileNameA(((void*)0), _pgmptr, MAX_PATH))
        _pgmptr[0] = '\0';
      else
        _pgmptr[MAX_PATH - 1] = '\0';
   }
   else
   {
      _pgmptr = _strdup(__argv[0]);
   }

   HeapValidate(GetProcessHeap(), 0, ((void*)0));


}
