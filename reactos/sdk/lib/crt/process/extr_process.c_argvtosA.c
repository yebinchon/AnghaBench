
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _TCHAR ;


 int _tcslen (scalar_t__ const* const) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__*,scalar_t__ const* const,size_t) ;

__attribute__((used)) static _TCHAR*
argvtosT(const _TCHAR* const* argv, _TCHAR delim)
{
   int i;
   size_t len;
   _TCHAR *ptr, *str;

   if (argv == ((void*)0))
      return ((void*)0);

   for (i = 0, len = 0; argv[i]; i++)
   {
      len += _tcslen(argv[i]) + 1;
   }

   str = ptr = (_TCHAR*) malloc((len + 1) * sizeof(_TCHAR));
   if (str == ((void*)0))
      return ((void*)0);

   for(i = 0; argv[i]; i++)
   {
      len = _tcslen(argv[i]);
      memcpy(ptr, argv[i], len * sizeof(_TCHAR));
      ptr += len;
      *ptr++ = delim;
   }
   *ptr = 0;

   return str;
}
