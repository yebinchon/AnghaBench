
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char* vim_strchr (void*,char) ;
 char* vim_strrchr (void*,char) ;

void
vms_remove_version(void * fname)
{
    char_u *cp;
    char_u *fp;

    if ((cp = vim_strchr( fname, ';')) != ((void*)0))
 *cp = '\0';
    else if ((cp = vim_strrchr( fname, '.')) != ((void*)0) )
    {
 if ((fp = vim_strrchr( fname, ']')) != ((void*)0) ) {;}
 else if ((fp = vim_strrchr( fname, '>')) != ((void*)0) ) {;}
 else fp = fname;

 while ( *fp != '\0' && fp < cp )
     if ( *fp++ == '.' )
  *cp = '\0';
    }
    return ;
}
