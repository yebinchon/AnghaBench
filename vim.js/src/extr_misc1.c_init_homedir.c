
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 int EMSG (int ) ;
 scalar_t__ IOSIZE ;
 char* IObuff ;
 scalar_t__ MAXPATHL ;
 char NUL ;
 char* NameBuff ;
 scalar_t__ OK ;
 scalar_t__ STRLEN (char*) ;
 int _ (int ) ;
 int acp_to_enc (char*,int,char**,int*) ;
 int e_prev_dir ;
 scalar_t__ enc_utf8 ;
 char* homedir ;
 scalar_t__ mch_chdir (char*) ;
 scalar_t__ mch_dirname (char*,scalar_t__) ;
 char* mch_getenv (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int vim_free (char*) ;
 int vim_setenv (char*,char*) ;
 int vim_snprintf (char*,scalar_t__,char*,char*,char*) ;
 char* vim_strchr (char*,char) ;
 int vim_strncpy (char*,char*,int) ;
 char* vim_strsave (char*) ;

void
init_homedir()
{
    char_u *var;


    vim_free(homedir);
    homedir = ((void*)0);




    var = mch_getenv((char_u *)"HOME");


    if (var != ((void*)0) && *var == NUL)
 var = ((void*)0);
    if (var != ((void*)0))
    {
 homedir = vim_strsave(var);
    }
}
