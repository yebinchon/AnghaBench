
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffblk {char* ff_name; } ;
typedef char char_u ;


 int FAIL ;
 int FA_DIREC ;
 int MAXPATHL ;
 char NUL ;
 int OK ;
 int STRCPY (char*,char*) ;
 int STRLEN (char*) ;
 int STRMOVE (char*,char*) ;
 int * _fullpath (char*,char*,int) ;
 int _truename (char*,char*) ;
 scalar_t__ findfirst (char*,struct ffblk*,int ) ;
 int * getcwd (char*,int) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ mch_chdir (char*) ;
 scalar_t__ mch_isFullName (char*) ;
 int psepc ;
 char* pseps ;
 int slash_adjust (char*) ;
 int strcat (char*,char*) ;
 int vim_strncpy (char*,char*,int) ;
 char* vim_strrchr (char*,char) ;

int
mch_FullName(
    char_u *fname,
    char_u *buf,
    int len,
    int force)
{
    if (!force && mch_isFullName(fname))
    {
 vim_strncpy(buf, fname, len - 1);
 slash_adjust(buf);
 return OK;
    }






    {

 char_u fullpath[MAXPATHL];

 if (!_truename(fname, fullpath))
     return FAIL;
 slash_adjust(fullpath);
 vim_strncpy(buf, fullpath, len - 1);
 return OK;
    }

}
