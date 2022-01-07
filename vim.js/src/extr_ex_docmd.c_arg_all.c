
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int ARGCOUNT ;
 int * ARGLIST ;
 char NUL ;
 char* alist_name (int *) ;
 char* alloc (unsigned int) ;

__attribute__((used)) static char_u *
arg_all()
{
    int len;
    int idx;
    char_u *retval = ((void*)0);
    char_u *p;






    for (;;)
    {
 len = 0;
 for (idx = 0; idx < ARGCOUNT; ++idx)
 {
     p = alist_name(&ARGLIST[idx]);
     if (p != ((void*)0))
     {
  if (len > 0)
  {

      if (retval != ((void*)0))
   retval[len] = ' ';
      ++len;
  }
  for ( ; *p != NUL; ++p)
  {
      if (*p == ' ' || *p == '\\')
      {

   if (retval != ((void*)0))
       retval[len] = '\\';
   ++len;
      }
      if (retval != ((void*)0))
   retval[len] = *p;
      ++len;
  }
     }
 }


 if (retval != ((void*)0))
 {
     retval[len] = NUL;
     break;
 }


 retval = alloc((unsigned)len + 1);
 if (retval == ((void*)0))
     break;
    }

    return retval;
}
